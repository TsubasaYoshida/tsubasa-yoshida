$(document).on('turbolinks:load', function(){
  $("p:contains('===')").each(function(){
    var filename = $(this).text().replace(/===/g, '');
    $(this).after('<div class="filename">' + filename + '</div>');
  });
  $("p:contains('===')").remove();
});
