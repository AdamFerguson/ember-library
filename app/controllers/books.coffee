controller = Ember.ArrayController.extend(
  savedBooks: Ember.computed.filterBy('content', 'isNew', false)
  completedFilter: 'all'
  isReading:   Ember.computed.equal('completedFilter', 'reading')
  isCompleted: Ember.computed.equal('completedFilter', 'completed')
  isAll:       Ember.computed.equal('completedFilter', 'all')

  filteredBooks: (->
    completedFilter = @get('completedFilter')
    @get('savedBooks').filter((book) ->
      switch completedFilter
        when 'completed' then book.get('completed') == true
        when 'reading'   then book.get('completed') == false
        else true
    )
  ).property('savedBooks.@each.completed','completedFilter')

  actions: {
    toggleComplete: (book) ->
      book.toggleProperty('completed')
      book.save()
      false # prevent action bubbling

    applyCompletedFilter: (filter) ->
      @set('completedFilter', filter)
      false # prevent action bubbling
  }
)

`export default controller`