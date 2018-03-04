$(function() {
});

$(document).on('turbolinks:load', function() {
          $(".top").onepage_scroll({
        sectionContainer: "section",
        responsiveFallback: 600,
        loop: true
      });
});