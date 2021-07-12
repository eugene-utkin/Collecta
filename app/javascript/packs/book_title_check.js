var book_title = document.querySelector("#book-title");
var similar_books = document.querySelector(".similar-books");

$( "#book_title" ).addEventListener("keyup", function () {
  $.ajax({
    url: '<%= check_if_book_title_exists_path %>',
    type: "GET",
    data: { title: $(book_title).val() },
    complete: function() {
      console.log("Sent to Controller");
    },
    success: function(data, textStatus, xhr) {
      console.log(data);
      console.log("Check 1");
      if (data['success'] == 1)
        {
          similar_books.classList.remove("similar-show");
          console.log("Check 3");
        }
      },
      error: function() {
            alert("Your Ajax error! message")
            console.log("Check 4");
      }
    });
  });