=bs-modal manual=false name="addBookModal" book=model fade=true footerButtons=addBookButtons title="Add a new book"
  form.form-horizontal submit="saveBook book target='view'" role="form"
    .form-group
      label.control-label.col-sm-2 for="title" Title
      .col-sm-8
        =input class="form-control" name="title" value=book.title placeholder="JavaScript: The Good Parts" type="text"
    .form-group
      label.control-label.col-sm-2 for="author" Author
      .col-sm-8
        =input class="form-control" name="author" value=book.author placeholder="Douglas Crockford" type="text"
    .form-group
      label.control-label.col-sm-2 for="img" Image:
      .col-sm-8
        =input class="form-control" name="img" value=book.img placeholder="filename.png" type="text"
        p.help-block Filename only. All book covers should be stored in /images/books. Will use placeholder.gif as default.
      img{bind-attr src="book.imgURL"} onerror="this.src='/images/books/placeholder.gif'"
    .form-group
      .col-sm-offset-2.col-sm-8
        .checkbox
          =input name="completed" type="checkbox" checked=book.completed
          | Completed
        /.modal-footer
        /  button.btn.btn-primary type="submit" style="float: right; margin-left: 10px;" Save changes
        /  button.btn aria-hidden="true" data-dismiss="modal" Close
