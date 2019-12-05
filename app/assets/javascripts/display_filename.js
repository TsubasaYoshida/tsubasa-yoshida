$(document).on('turbolinks:load', function(){
  var filename = $("p:contains('===')").text().replace('===', '');
  $("p:contains('===')").replaceWith('<span class="filename">' + filename + '</span>');
});
