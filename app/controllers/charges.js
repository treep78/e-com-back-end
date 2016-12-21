'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Charge = models.charge;

const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  let search = {_owner: req.currentUser._id };
  Charge.find(search)
    .then((charges) => {
      let serialized = [];
      for(let charge in charges){
        console.log(charges[charge]);
        let tmp = {
          amount: charges[charge].amount,
          currency: charges[charge].currency,
          source: charges[charge].source,
        };
        serialized.push(tmp);
      }
      res.json({ serialized });
    })
    .catch(err => next(err));
};

const show = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Charge.findById(search)
    .then((charge) =>{
      if(charge){
        let tmp = {
          amount: charge.amount,
          currency: charge.currency,
          source: charge.source,
        };
        res.json({ tmp });
      }else{
        next();
      }
    })
    .catch(err => next(err));
};

const create = (req, res, next) => {
  console.log('Request: ',req.body);
  console.log('Request Body:', req.body);
  console.log('Request Body charge: ', req.body.charge);
  let charge = Object.assign(req.body.charge, {
    _owner: req.currentUser._id,
  });
  console.log('Charge: T',charge);
  Charge.create(charge)
    .then(charge => res.json({ charge }))
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create,
}, { before: [
  { method: authenticate},
], });
