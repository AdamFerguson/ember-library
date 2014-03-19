import Book from "appkit/models/book";

//export default DS.FixtureAdapter.extend();
export default DS.LSAdapter.extend({});

var namespace = 'DS.LSAdapter';
if(!localStorage.getItem(namespace)) {
  var data = {book: {records: {}}};

  Book.FIXTURES.forEach(function(book) {
    data.book.records[book.id] = book;
  });

  localStorage.setItem(namespace, JSON.stringify(data));
}

//export default DS.RESTAdapter.extend({
//  namespace: 'api'
//});
