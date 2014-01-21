route = Ember.Route.extend(
  model: ->
    @store.find('book')

  actions: {
    addBookModal: ->
      newBook = @store.createRecord('book')
      @controllerFor('addBook').set('model', newBook)
      #@render('bsAddBook', {
      #  into: 'application'        
      #  outlet: 'modal'
      #  controller: 'addBook'
      #})
      Bootstrap.ModalManager.show('addBookModal')

    removeBook: (book) ->
      book.destroyRecord()

    saveBook: (book) ->
      book.save()

    #hideModal: ->
    #  @disconnectOutlet(
    #    outlet:     'modal'
    #    parentView: 'application'
    #  )
  }

)

`export default route`