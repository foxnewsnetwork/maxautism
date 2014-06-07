class Maxautism.NowScrollingView extends Ember.View with Maxautism.Scrolling
  threshold: 2
  didInsertElement: ->
    @bindScrolling()
  willDestroyElement: ->
    @unbindScrolling()
  mousewheeled: (e) ->
    if 0 > e.deltaY
      @scroll_down()
    else
      @scroll_up()

  scroll_up: ->
    if @get('scroll_direction') is 'down'
      @reset_count()
    @set 'scroll_direction', 'up'
    @incrementProperty 'scroll_count'

  scroll_down: ->
    if @get('scroll_direction') is 'up'
      @reset_count()
    @set 'scroll_direction', 'down'
    @decrementProperty 'scroll_count'

  reset_count: ->
    @set('scroll_count', 0)

  +observer scroll_count
  propagate_action: ->
    console.log @get 'scroll_count'
    if -@threshold > @get('scroll_count')
      @get('controller').send 'scrollDown'
      @reset_count()
    if @threshold < @get('scroll_count')
      @get('controller').send 'scrollUp'
      @reset_count()

  +computed direction, scroll_count, scroll_direction
  completion: ->
    if @get('direction') is @get('scroll_direction')
      @peicewise_linear Math.abs @get 'scroll_count'
    else
      0