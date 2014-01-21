.app
  nav.navbar.navbar-default
    .navbar-header
      a.navbar-brand Our Library
    .collapse.navbar-collapse
      ul.nav.navbar-nav
        li.active
          link-to "books" | Home
        li
          a click="addBookModal" Add a book
  = outlet 'modal'

  = outlet
