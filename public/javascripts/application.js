// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
  $("#sort_posts a").live("click", function() {
	$.getScript(this.href);
	return false;
  });
});


