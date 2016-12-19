'use strict';
let mongodb = require('mongodb');
let uri = 'mongodb://treep78:mod-commerce@ds139448.mlab.com:39448/mod-commerce';

mongodb.MongoClient.connect(uri, function(err, db) {
  if(err){
     throw err;
  }else{
    let products = db.collection('products');
    console.log(db);
    db.close(function(err){
      if(err){
        throw err;
      }
    });
  }
});
