// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


import 'materialize-css/dist/js/materialize'

// Set parallax, sidenav and drop down functionality
$(document).on('turbolinks:load', function () {
  $('.parallax').parallax();
  $('.sidenav').sidenav();
  $('.dropdown-trigger').dropdown();
});

// Clear search button on click
$(document).on('turbolinks:load', function () {
  $('#clear-search').on('click', function (e) { 
    $('#search')[0].value = '';
    $('#book-search-results').html('');
  });
});
