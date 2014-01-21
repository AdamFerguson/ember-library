model = DS.Model.extend(
  title:     DS.attr('string')
  author:    DS.attr('string')
  img:       DS.attr('string')
  completed: DS.attr('boolean'),
  imgURL: Ember.computed('img', ->
    "/images/books/#{@get('img')}"
  )
)

`export default model`