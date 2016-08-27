var cycleQueue = function(event) {
  event.preventDefault()
  $('.card').each(function() {
    var self  = $(this)
    var order = parseInt(self.data('queue'), 10)
    var nextOrder = order - 1

    if (order == 0) {
      self.remove();
    } else {
      self.data('queue', nextOrder.toString());
      if (nextOrder == 0) { self.show(); }
    }
    
  });

  if ($('.card').length < 3) {
    // $.get("/places", function(response) {
    //   console.log(response)
    // })

    $.ajax({
      url: '/places'
    }).done( function(response) {
      console.log(response)
    });
  }
}

var setup = function() {
  $(".dislike-button").click(cycleQueue)
}

$( document ).on('turbolinks:load', setup);
