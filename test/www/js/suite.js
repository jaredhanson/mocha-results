define(['require',
        'mocha',
        'chai'],
function(require, mocha, chai) {
  mocha.setup('bdd');
  expect = chai.expect
  
  require(['test/mocha-results.test'],
  function() {
    if (window.mochaPhantomJS) { mochaPhantomJS.run(); }
    else { mocha.run(); }
  });
});
