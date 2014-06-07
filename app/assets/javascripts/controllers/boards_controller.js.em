class Maxautism.BoardsController extends Ember.ObjectController
  +computed model.boards
  boards: ->
    @get 'model.boards'

  +computed model.meta_board.pages
  page_count: ->
    @get 'model.meta_board.pages'

  +computed page_count
  pages: ->
    p = [1..@get('page_count')] if @get('page_count') < 10
    p = _.union [1..10], [@get('page_count')] if @get('page_count') > 10
    p || []
