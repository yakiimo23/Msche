// Run like this:
// cd client && $(npm bin)/webpack -w --config webpack.rails.config.js
// Note that Foreman (Procfile.dev) has also been configured to take care of this.

const config = require('./webpack.common.config');

config.entry.push('./scripts/rails_only');

config.output = {
  filename: 'bundle.js',
  path: '../app/assets/javascripts/',
};

config.externals = { jquery: 'var jQuery' };

config.module.loaders.push(
  { test: /\.jsx$/, exclude: /node_modules/, loader: 'babel-loader' },
  { test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader' }
);

module.exports = config;
