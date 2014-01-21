.addForm.modal.fade aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1"
  form#addBook action="#" method="post" name="addBook"
    .modal-header
      button.close aria-hidden="true" data-dismiss="modal" type="button"
      h3 Add a new book
    .modal-body
      label for="title"
      input#title name="title" placeholder="JavaScript: The Good Parts" type="text"
        label for="author"
        input#author name="author" placeholder="Douglas Crockford" type="text"
          label for="img"
          input#img name="img" placeholder="filename.png" type="text"
            span.help-block Filename only. All book covers should be stored in /images/books. Will use placeholder.gif as default.
            label.checkbox for="completed"
              input name="completed" type="checkbox" value="true"
                | Completed
    .modal-footer
      button.btn aria-hidden="true" data-dismiss="modal"
      button.btn.btn-primary type="submit"
