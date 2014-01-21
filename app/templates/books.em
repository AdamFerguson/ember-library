ul.nav.nav-pills
  li{bind-attr class="isAll:active"}
    a click="applyCompletedFilter 'all'" All
  li{bind-attr class="isReading:active"}
    a click="applyCompletedFilter 'reading'" Reading
  li{bind-attr class="isCompleted:active"}
    a click="applyCompletedFilter 'completed'" Completed
.row.book-list
  = each filteredBooks
    .col-sm-6.col-md-4
      .thumbnail
        img{bind-attr src="imgURL"} alt="Cover"
        p
          strong= title
          br
          | by {{author}}
        p
          strong Completed:
          a click="toggleComplete this"
            if completed
              | Yes
            else
              | No

        a click="removeBook this" class="destroy" | Remove from library
