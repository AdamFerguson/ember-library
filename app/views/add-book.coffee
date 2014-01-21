addBook = Ember.View.extend(
  didInsertElement: ->
    self = this
    @$('.modal').modal().on('hidden.bs.modal', (evt) ->
      self.get('context').send('hideModal')
    )
  actions: {
    saveBook: (book) ->
      @$('.modal').modal('hide')
      @get('context').send('saveBook', book)
  }
)

`export default addBook`