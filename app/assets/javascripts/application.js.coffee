#= require jquery
#= require jquery_ujs
#= require jquery.mousewheel
#= require underscore
#= require bootstrap
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require maxautism

# for more details see: http://emberjs.com/guides/application/
window.Maxautism = Ember.Application.create()
$(document).ready ->
  $('.no-script').hide()