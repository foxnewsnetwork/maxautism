class Maxautism.ApplicationRoute extends Ember.Route
  newBoardController: ->
    controller = @controllerFor 'new_board'
    controller.set 'model',
      boardMaker: (params) => @store.createRecord('board', params).save()
    controller
    
  actions:
    newAutismModal: ->
      @render 'new_board',
        into: 'application'
        outlet: 'modal'
        controller: @newBoardController()

    closeModal: ->
      @disconnectOutlet
        parentView: "application"
        outlet: "modal"