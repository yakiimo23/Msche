// Common webpack configuration used by webpack.hot.config and webpack.rails.config.

const path = require('path');

module.exports = {
  context: __dirname,
  entry: [],
  resolve: {
    root: [ path.join(__dirname, 'scripts'), path.join(__dirname, 'assets/javascripts')],
    extensions: ['', '.js', '.jsx', 'config.js']
  },
  module: {
    loaders: [],
  },
};
