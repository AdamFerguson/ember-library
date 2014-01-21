import Books from 'appkit/routes/books';

var route, store;
var findResult = [1,2,3,4,5,6];

module("Unit - BooksRoute", {
  setup: function(){
    TestStore.reopenClass({
      find: function(type) {
        return [1,2,3,4,5,6];
      }
    });
    var container = isolatedContainer([
      'route:books'
    ]);
    registerStore(container, TestStore);
    startApp({
      buildContainer: function() {
        return container;
      },
      ready: function(app) {
        this.inject('controller', 'store', 'store:main');
        this.inject('route', 'store', 'store:main');
        this.inject('serializer', 'store', 'store:main');
        this.inject('dataAdapter', 'store', 'store:main');
      }
    });

    route = container.lookup('route:books');
    store = container.lookup('store:main');
  }
});

test("it exists", function(){
  ok(route);
  ok(route instanceof Books);
});

test("#model", function(){
  deepEqual(route.model().get('length'), 6);
});
