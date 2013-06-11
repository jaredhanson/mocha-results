# mocha-results

This module listens to [Mocha](http://visionmedia.github.io/mocha/) `runner`
events and populates `window.mochaResults` which may be used by Selenium to
report on results.

It is particularly useful as the in-browser component of [mocha-cloud](https://github.com/visionmedia/mocha-cloud)
when performing automated browser testing with [Sauce Labs](https://saucelabs.com/).

## Install

##### volo

    $ volo add jaredhanson/mocha-results mocha-results

## Usage

```
results(mocha.run());
```

## Credits

  - [Jared Hanson](http://github.com/jaredhanson)
  - [TJ Holowaychuk](http://github.com/visionmedia)

## License

[The MIT License](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2013 Jared Hanson <[http://jaredhanson.net/](http://jaredhanson.net/)>
Copyright (c) 2012 TJ Holowaychuk <tj@vision-media.ca>
