const webpack = require('webpack');
const WebpackAssetsManifest = require('webpack-assets-manifest');
const CopyPlugin = require('copy-webpack-plugin');
// const PagesObject = require('./buildpages.js');

module.exports = {
  outputDir: '../public/app',
  runtimeCompiler: true,
  filenameHashing: false,

  publicPath:
    process.env.NODE_ENV === 'production'
      ? '/app'
      : 'http://devisephp.test:8080/app/',

  devServer: {
    disableHostCheck: true,
    useLocalIp: false,
    proxy: 'http://localhost:8080',
    // public: 'atlantisbahamas.test:8080',
    publicPath: 'http://devisephp.test:8080/app/',
    // allowedHosts: ['atlantisbahamas.test'],
    port: 8080,
    headers: { 'Access-Control-Allow-Origin': '*' },
  },

  configureWebpack: {
    plugins: [
      new webpack.ProvidePlugin({
        $: 'jquery',
        jquery: 'jquery',
        'window.jQuery': 'jquery',
        jQuery: 'jquery',
      }),
      new WebpackAssetsManifest(),
    ],
  },

  indexPath: undefined,
  // pages: PagesObject,
  // chainWebpack: (config) => {
  //   config.plugins.delete('prefetch');
  //   // TODO: Remove this workaround once https://github.com/vuejs/vue-cli/issues/2463 is fixed
  //   // Remove preload plugins for multi-page build to prevent infinite recursion
  //   Object.keys(PagesObject).forEach((page) => {
  //     config.plugins.delete(`preload-${page}`);
  //     config.plugins.delete(`prefetch-${page}`);
  //   });
  // },

  css: {
    extract: true,
  },
};

if (process.env.NODE_ENV === 'production') {
  module.exports.configureWebpack.plugins.push(
    new CopyPlugin([
      { from: 'node_modules/devisephp-interface/dist', to: '../devise' },
    ]),
  );
}
