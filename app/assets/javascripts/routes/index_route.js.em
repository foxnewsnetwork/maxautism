class Maxautism.IndexRoute extends Ember.Route
  renderTemplate: ->
    @render 'boards',
      controller: @boardsController()
  boardModels: ->
    @store.find 'board',
      page: 1
      per_page: 7
  metaBoardModel: ->
    @store.find 'meta_board', 'unique'
  boardsController: ->
    controller = @controllerFor 'boards'
    controller.set 'model', 
      boards: @boardModels()
      meta_board: @metaBoardModel()
    controller
  