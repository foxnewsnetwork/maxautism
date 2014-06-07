a = DS.attr
class Maxautism.MetaBoard extends DS.Model
  boards: a "number"
  +computed boards
  pages: ->
    Math.ceil(parseInt(@get 'boards') / 7)
