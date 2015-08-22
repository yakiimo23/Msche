// Run like this:
// cd client && $(npm bin)/webpack -w --config webpack.rails.config.js
// Note that Foreman (Procfile.dev) has also been configured to take care of this.

var path = require('path');

module.exports = {
  context: __dirname,
  entry: [
    './scripts/rails_only'
  ],
  output: {
    filename: 'bundle.js',
    path: '../app/assets/javascripts/'
  },
  module: {
    loaders: [
      { test: /\.jsx$/, loader: 'babel-loader' }
    ]
  },
  resolve: {
    root: [ path.join(__dirname, 'scripts'), path.join(__dirname, 'assets/javascripts')],
    extensions: ['', '.js', '.jsx']
  },
  externals: {
    jquery: 'var jQuery'
  }
};
