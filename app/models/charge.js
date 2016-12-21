'use strict';

const mongoose = require('mongoose');

const chargeSchema = new mongoose.Schema({
  amount: {
    type: Number,
    required: false,
  },
  currency: {
    type: String,
    required: false,
  },
  source: {
    type: String,
    required: false,
  },
  description: {
    type: String,
    required: false,
  },
  metadata: {
    type: Object,
    required: false,
  },
  // _owner: {
  //   type: mongoose.Schema.Types.ObjectId,
  //   ref: 'User',
  //   required: true,
  // },
}, {
  timestamps: true,
});

const Charge = mongoose.model('Charge', chargeSchema);

module.exports = Charge;
