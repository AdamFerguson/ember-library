controller = Ember.ArrayController.extend(
  savedBooks: Ember.computed.filterBy('content', 'isNew', false)
)

`export default controller`