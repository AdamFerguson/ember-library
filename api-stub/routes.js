/* globals module */

module.exports = function(server) {

  // Create an API namespace, so that the root does not
  // have to be repeated for each end point.
  server.namespace('/api', function() {

    // Return fixture data for '/api/posts/:id'
    server.get('/books', function(req, res) {
      var books = {
        "books": [
          {
            "id": 1,
            "title": "Functional JavaScript",
            "author": "Michael Fogus",
            "img": "functional-js.gif",
            "completed": false
          },
          {
            "id": 2,
            "title": "JavaScript: The Definitive Guide, 6th Edition",
            "author": "David Flanagan",
            "img": "js-definitive-guide.gif",
            "completed": true
          },
          {
            "id": 3,
            "title": "Node for Front-End Developers",
            "author": "Garann Means",
            "img": "node-for-fed.gif",
            "completed": false
          },
          {
            "id": 4,
            "title": "JavaScript Web Applications",
            "author": "Alex MacCaw",
            "img": "js-web-apps.gif",
            "completed": false
          },
          {
            "id": 5,
            "title": "Learning JavaScript Design Patterns",
            "author": "Addy Osmani",
            "img": "js-patterns.gif",
            "completed": false
          },
          {
            "id": 6,
            "title": "Maintainable JavaScript",
            "author": "Nicholas C. Zakas",
            "img": "maintainable-js.gif",
            "completed": true
          }
        ]
      };

      res.send(books);
    });

  });

};
