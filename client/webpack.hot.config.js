// Run like this:
// cd client && node server.js

const path = require('path');
const config = require('./webpack.common.config');
const webpack = require('webpack');

config.entry.push(
  'webpack-dev-server/client?http://localhost:3000',
  'webpack/hot/dev-server'
);

config.output = {
  filename: 'express-bundle.js',
  path: __dirname,
};

config.plugins = [new webpack.HotModuleReplacementPlugin()];

config.module.loaders.push(
  {test: /\.jsx?$/, loaders: ['react-hot', 'babel'], exclude: /node_modules/},
  {test: /\.css$/, loader: 'style-loader!css-loader'}
);

module.exports = config;
