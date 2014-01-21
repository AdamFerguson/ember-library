.modal.fade aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1"
  .modal-dialog
    .modal-content
      form.form-horizontal submit="saveBook model target='view'" role="form"
        .modal-header
          button.close aria-hidden="true" data-dismiss="modal" type="button"
          h3 Add a new book
        .modal-body
          .form-group
            label.control-label.col-sm-2 for="title" Title
            .col-sm-8
              =input class="form-control" name="title" value=title placeholder="JavaScript: The Good Parts" type="text"
          .form-group
            label.control-label.col-sm-2 for="author" Author
            .col-sm-8
              =input class="form-control" name="author" value=author placeholder="Douglas Crockford" type="text"
          .form-group
            label.control-label.col-sm-2 for="img" Image:
            .col-sm-8
              =input class="form-control" name="img" value=img placeholder="filename.png" type="text"
              p.help-block Filename only. All book covers should be stored in /images/books. Will use placeholder.gif as default.
            img{bind-attr src="imgURL"} onerror="this.src='/images/books/placeholder.gif'"
          .form-group
            .col-sm-offset-2.col-sm-8
              .checkbox
                =input name="completed" type="checkbox" value=completed
                | Completed
        .modal-footer
          button.btn.btn-primary type="submit" style="float: right; margin-left: 10px;" Save changes
          button.btn aria-hidden="true" data-dismiss="modal" Close
