'use strict';

const mongoose = require('mongoose');

const chargeSchema = new mongoose.Schema({
  amount: {
    type: Number,
    required: true,
  },
  currency: {
    type: String,
    required: true,
  },
  source: {
    type: String,
    required: true,
  },
  description: {
    type: String,
    required: false,
  },
  metadata: {
    type: Object,
    required: false,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
});

const Charge = mongoose.model('Charge', chargeSchema);

module.exports = Charge;
