controller = Ember.ObjectController.extend(
  addBookButtons: [
    Ember.Object.create({title: 'Save changes', type: 'primary', click: 'saveBook'}),
    Ember.Object.create({title: 'Cancel', dismiss: 'modal'})
  ]

  saveBook: ->
    @send('saveBook', @get('model'))
)

`export default controller`