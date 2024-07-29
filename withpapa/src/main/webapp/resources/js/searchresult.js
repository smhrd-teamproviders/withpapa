$(document).ready(function() {
  $("#openModalButton").click(function(event) {
    event.preventDefault();
    $("body").css("overflow", "hidden");  /* Prevent body scrolling */
    $("#banner_online").fadeIn();
    $("#modal").fadeIn();
  });

  $("#close_button").click(function() {
    $("#banner_online").fadeOut();
    $("#modal").fadeOut();
    $("body").css("overflow", "auto");  /* Restore body scrolling */
  });

  $("#modal").click(function(event) {
    if (event.target.id === "modal") {
      $("#banner_online").fadeOut();
      $("#modal").fadeOut();
      $("body").css("overflow", "auto");  /* Restore body scrolling */
    }
  });
});