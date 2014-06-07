class Maxautism.NewBoardController extends Ember.ObjectController
  +observer board_params
  updateBoard: ->
    if @get('board_params')?
      @get('boardMaker')(@get 'board_params' ).then =>
        @send "closeModal"

  +computed model.boardMaker
  boardMaker: ->
    @get 'model.boardMaker'
    
  