define(['mocha-results'],
function(results) {

  describe("mocha-results", function() {

    it('should export function', function() {
      expect(results).to.exist;
      expect(results).to.be.a('function');
    });

  });
  
  return { name: "test.mocha-results" }
});
