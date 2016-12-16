'use strict';

const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
  product_id: {
    type: String,
    required: true,
  },
  count: {
    type: Number,
    required: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
});

const Item = mongoose.model('Item', itemSchema);

module.exports = Item;
