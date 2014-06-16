# Karma configuration
# http://karma-runner.github.io/0.10/config/configuration-file.html
module.exports = (config) ->
  config.set

    # base path, that will be used to resolve files and exclude
    basePath: "../"

    # testing framework to use (jasmine/mocha/qunit/...)
    frameworks: [
      "mocha"
      "chai"
      "sinon"
    ]

    # list of files / patterns to load in the browser
    files: [
      "app/bower_components/angular/angular.js"
      "app/bower_components/angular-mocks/angular-mocks.js"
      "app/bower_components/angular-resource/angular-resource.js"
      "app/bower_components/angular-cookies/angular-cookies.js"
      "app/bower_components/angular-sanitize/angular-sanitize.js"
      "app/bower_components/angular-route/angular-route.js"
      "app/bower_components/lodash/dist/lodash.js"
      "app/bower_components/sinon/lib/sinon.js"
      "app/bower_components/sinon/lib/sinon/spy.js"
      "app/bower_components/sinon/lib/sinon/call.js"
      "app/bower_components/sinon/lib/sinon/stub.js"
      "app/bower_components/sinon/lib/sinon/mock.js"
      "app/bower_components/sinon/lib/sinon/assert.js"
      "dev/scripts/**/*.js"
      "test/client/unit/**/*_spec.coffee"
    ]
    preprocessors:
      "dev/scripts/**/*.js": ["coverage"]
      "test/client/unit/**/*_spec.coffee": ["coffee"]

    reporters: [
      "dots"
      "coverage"
    ]
    coverageReporter:
      type: "html"
      dir: "test/coverage"


    # list of files / patterns to exclude
    exclude: []

    # web server port
    port: 8080

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: false

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: ["PhantomJS"]

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: true

  return

#    plugins: [
#      "karma-coffee-preprocessor",
#
#      "karma-mocha",
#      "karma-chai-plugins",
#      "karma-spec-reporter",
#      "karma-coverage",
#
#      "karma-phantomjs-launcher"
#    ]
