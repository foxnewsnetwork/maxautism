class Maxautism.PageRoute extends Ember.Route
  renderTemplate: (ctrl, mdl)->
    @render 'boards',
      controller: @boardsController(mdl)
  model: (params) ->
    @store.find 'board',
      page: parseInt(params.page_id)
      per_page: 7
  boardsController: (boards) ->
    controller = @controllerFor 'boards'
    controller.set 'model', 
      boards: boards
      meta_board: @metaBoardModel()
    controller
  metaBoardModel: ->
    @store.find 'meta_board', 'unique'
