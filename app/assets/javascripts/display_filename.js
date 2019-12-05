$(document).on('turbolinks:load', function(){
  var filename = $("p:contains('===')").text().replace('===', '');
  $("p:contains('===')").next().prepend('<span class="filename">' + filename + '</span>');
  $("p:contains('===')").remove();
});
