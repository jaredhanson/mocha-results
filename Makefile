SOURCES = *.js
TESTS = test/*.test.js

# ==============================================================================
# Packaging
# ==============================================================================

build-browserify:
	browserify -t deamdify mocha-results.js -o bundle.js


# ==============================================================================
# Tests
# ==============================================================================

CHROME = open -a "Google Chrome"
FIREFOX = open -a "Firefox"
SAFARI = open -a "Safari"
PHANTOMJS = phantomjs

MOCHA_PHANTOMJS = ./node_modules/.bin/mocha-phantomjs
WWW_TESTS = test/www/index.html


test: test-phantomjs

test-chrome: test/www/js/lib
	$(CHROME) $(WWW_TESTS)

test-firefox: test/www/js/lib
	$(FIREFOX) $(WWW_TESTS)

test-safari: test/www/js/lib
	$(SAFARI) $(WWW_TESTS)

test-phantomjs: node_modules test/www/js/lib
	$(MOCHA_PHANTOMJS) $(WWW_TESTS)

test/www/js/lib:
	cd test/www && volo add -nostamp

node_modules:
	npm install


# ==============================================================================
# Code Quality
# ==============================================================================

JSHINT = jshint

hint: lint
lint:
	$(JSHINT) $(SOURCES)


# ==============================================================================
# Clean
# ==============================================================================

clean:

clobber: clean
	rm -rf node_modules
	rm -rf test/www/js/lib


.PHONY: test test-chrome test-firefox test-safari test-phantomjs hint lint
