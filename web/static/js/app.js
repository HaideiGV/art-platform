import "phoenix_html"
window.csrfToken = '<%= get_csrf_token() %>'

$(document).ready(function() {
  $(".like").click(function(){
      var master_id = $(this).attr("data-rate");
      $.ajax({
      type : "PATCH",
      url: '/masters/' + master_id,
      data : JSON.stringify({action: 'like'}),
      headers : new window.Headers({
        'x-csrf-token': window.csrfToken,
        "Access-Control-Allow-Methods": "PATCH"
      }),
      function(data){
          $('#like_count'+master_id).html(data);
      }
    });
  });
});

$(document).ready(function() {
  $(".dislike").click(function(){
      var master_id = $(this).attr("data-rate");
      $.ajax({
        type : "PATCH",
        url : '/masters/' + master_id,
        data : JSON.stringify({action: 'dislike'}),
        headers : new window.Headers({
          'x-csrf-token': window.csrfToken,
          "Access-Control-Allow-Methods": "PATCH"
        }),
        function(data){
            $('#like_count'+master_id).html(data);
        }
      });
    });
});
