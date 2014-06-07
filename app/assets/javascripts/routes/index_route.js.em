class Maxautism.IndexRoute extends Ember.Route
  renderTemplate: ->
    @renderIndex()
    @renderAutisms()
  renderIndex: ->
    @render 'index',
      controller: 'index'
  renderAutisms: ->
    @render 'autisms',
      controller: @autismsController()
      outlet: 'content'
  autismsController: ->
    controller = @controllerFor 'autisms'
    controller.set 'model', @store.find 'board'
    controller

