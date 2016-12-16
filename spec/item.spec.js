'use strict';

// Allow chai syntax like `expect(foo).to.be.ok;`
// jshint -W030

const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');

chai.use(chaiAsPromised);

const expect = chai.expect;

const item = require('../lib/item');

describe('Sync', function () {
  it('is true', function () {
    expect(item.sync(true)).to.be.true;
  });
});

describe('Async', function () {
  it('is true', function (done) {
    item.async(true, function (error, value) {
      if (error || value !== true) {
        error = error || new Error(`value is ${value}`);
      }

      done(error);
    });
  });
});

describe('Promise', function () {
  it('is true', function () {
    return expect(item.promise(true)).to.eventually.be.true;
  });
});
