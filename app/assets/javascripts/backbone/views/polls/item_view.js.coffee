BackboneHackaton.Views.Polls ||= {}

class BackboneHackaton.Views.Polls.ItemView extends Backbone.View
  template: JST["backbone/templates/polls/item"]

#  events:
#    "click .destroy" : "destroy"

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
