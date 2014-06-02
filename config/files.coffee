module.exports = (lineman) ->
  js:
    vendor: [
      "vendor/bower/underscore/underscore.js"
      "vendor/bower/jquery/jquery.js"
      "vendor/bower/handlebars/handlebars.runtime.js"
      "vendor/bower/ember/ember.js"
      "vendor/bower/ember-data/ember-data.js"
      "vendor/js/**/*.js"
    ]
  coffee:
    app: ["app/js/main.coffee", "app/js/**/*.coffee"]
