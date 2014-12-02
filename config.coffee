exports.config =
  # See http://brunch.io/#documentation for docs.
  jsWrapper: 'raw'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^(app)/
        'js/vendor.js': /^(bower_components)/
        'test/js/test.js': /^test(\/|\\)(?!bower_components)/
        'test/js/test-bower_components.js': /^test(\/|\\)(?=bower_components)/

    stylesheets:
      joinTo:
        'css/app.css' : /^(bower_components|app)/

    templates:
      joinTo: 'app.js'

  modules:
    wrapper: false
    definition: false
    nameCleaner: (path) ->
      path.replace(/^app\/scripts\//, '')

  paths:
    public: './public'
    ignored: /template-/g

  minify: true