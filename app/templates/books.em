ul.nav.nav-pills
  li.active
    a href="#/" All
  li
    a href="#/reading" Reading
  li
    a href="#/completed" Completed
.row.book-list
  = each savedBooks
    .col-sm-6.col-md-4
      .thumbnail
        img{bind-attr src="imgURL"} alt="Cover"
        p
          strong= title
          br
          | by {{author}}
        p
          strong Completed:
          a click="toggleComplete"
            if completed
              | Yes
            else
              | No

        a click="removeBook this" class="destroy" | Remove from library
