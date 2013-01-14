BackboneHackaton.Views.Polls ||= {}

class BackboneHackaton.Views.Polls.ShowView extends Backbone.View
  template: JST["backbone/templates/polls/show"]


  addItems: =>
    @collection.each @addItem

  addItem: (item) =>
    view = new BackboneHackaton.Views.Polls.ItemView model : item
    @$('ul').append(view.render().el)

  render: ->
    @$el.html(@template( ))
    #@$el.html(@template(@model.toJSON() ))
    @addItems()
    return this
