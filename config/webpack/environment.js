const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

// SMC - Code taken from this tutorial - https://rubyyagi.com/how-to-use-bootstrap-and-jquery-in-rails-6-with-webpacker/

environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"] // for Bootstrap 4
  })
);

module.exports = environment
