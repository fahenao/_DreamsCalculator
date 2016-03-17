// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require_tree .
//=require bootstrap-sprockets
//= require jquery
//= require jquery_ujs

$('#dream-'+<%= @dream.id %>).fadeOut();

<% if @dream.new_record? %>
	$('input#dream_name').efect('highlight', {color: 'red'});
<% else %>
	$('div#dreams').append("<%= escape_javascript(render @dream) %>");
	$('div#<%= dom_id(@dream) %>').effect('highlight');
<% end %>