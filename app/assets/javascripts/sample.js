$(function() {
});

$(document).on('turbolinks:load', function() {
          $(".main").onepage_scroll({
        sectionContainer: "section",
        responsiveFallback: 600,
        loop: true
      });
});