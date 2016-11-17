$(document).ready(function() {
  // Add smooth scrolling
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // this.hash has a value
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // animate() method
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function() {

        // (#) to URL when done scrolling
        window.location.hash = hash;
      });
    }
  });

  $(window).scroll(function() {
    $(".slideanim").each(function() {
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
      if (pos < winTop + 600) {
        $(this).addClass("slide");
      }
    });
  });
})
