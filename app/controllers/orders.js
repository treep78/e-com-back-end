'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Order = models.order;

const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  let search = {_owner: req.currentUser._id };
  Order.find(search)
    .then((orders) => {
      let serialized = [];
      for(let order in orders){
        console.log(orders[order]);
        let tmp = {
          item: orders[order].items,
          ordered: orders[order].createdAt
        };
        serialized.push(tmp);
      }
      res.json({ serialized });
    })
    .catch(err => next(err));
};

const show = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Order.findById(search)
    .then((order) =>{
      if(order){
        let serialized ={
          item: order.items,
          ordered: order.createdAt
        };
        res.json({ serialized });
      }else{
        next();
      }
    })
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let order = Object.assign(req.body.order, {
    _owner: req.currentUser._id,
  });
  Order.create(order)
    .then(order => res.json({ order }))
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create,
}, { before: [
  { method: authenticate},
], });
