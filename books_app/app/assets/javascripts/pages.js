$(document).ready(function(){


  $("#searchForm").on('submit', function(event){
    event.preventDefault()

    $.ajax({
      url: $(this).attr('action'),
      method: 'GET',
      data: {
        query: event.target.query.value
      }
    }).done(function(response){
      console.log(response)
    })
  })

})



