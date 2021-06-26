var book_title = document.querySelector("#book-title");
var similar_books = document.querySelector(".similar-books");

book_title.addEventListener("keyup", function () {
    $.ajax({
      url: '<%= check_if_book_title_exists_path %>',
      type: "GET",
      data: { title: $(book_title).val() },
      complete: function() {
        console.log("Sent to Controller");
      },
      success: function(data, textStatus, xhr) {
                   if (data['success'] == 0)
                   {
                    similar_books.classList.add("similar-show");
                    $(document).find('.similar-books-content').html('<br>' +
                      '<%= render partial: 'similar_books', locals: { items: @similar_books } %>' +
                      '<br>');
                   }
                   else
                   {
                    similar_books.classList.remove("similar-show");
                   }
      },
      error: function() {
            alert("Your Ajax error! message")
      }
    });
  });