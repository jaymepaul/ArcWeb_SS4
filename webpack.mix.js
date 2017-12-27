let mix = require('laravel-mix');

// creates separate vendor file
mix.extract(['vue', 'vuex'], 'themes/arcweb/dist/vendor.js');

mix.js('themes/arcweb/src/js/app.js', 'themes/arcweb/dist');

mix.sass('themes/arcweb/src/scss/main.scss', 'themes/arcweb/dist', {
  includePaths: ['node_modules/']
});

mix.options({
  processCssUrls: false,
});

if (!mix.inProduction()) {
  // linting
  mix.webpackConfig({
    module: {
      rules: [
        {
          test: /\.(js|vue)$/,
          exclude: /node_modules/,
          loader: 'eslint-loader',
        },
      ],
    },
  });

  mix.sourceMaps();
}
