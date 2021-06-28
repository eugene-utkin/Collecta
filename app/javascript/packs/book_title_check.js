$( "#book_title" ).keyup(function() {
     $.ajax({
        url: '<%= check_if_book_title_exists_path %>',
        type: "GET",
        data: { title: $('#book_title').val() },
        complete: function() {},
        success: function(data, textStatus, xhr) {
                   // do something with your returned data //
                   if (data.available == false)
                   {
                    $('#book_title').addClass("error");   // style the class with your required css
                   }
                 },
        error: function() {
            alert("Your Ajax error! message")
       }
     });
});