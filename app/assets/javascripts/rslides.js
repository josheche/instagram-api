var slide_ready = function() {
  $(".rslides").responsiveSlides({
    auto: false,             // Boolean: Animate automatically, true or false
    speed: 500,            // Integer: Speed of the transition, in milliseconds
    timeout: 4000,          // Integer: Time between slide transitions, in milliseconds
    pager: true,           // Boolean: Show pager, true or false
    nav: true,             // Boolean: Show navigation, true or false
    random: false,          // Boolean: Randomize the order of the slides, true or false
    pause: false,           // Boolean: Pause on hover, true or false
    pauseControls: true,    // Boolean: Pause when hovering controls, true or false
    prevText: "Previous",   // String: Text for the "previous" button
    nextText: "Next",       // String: Text for the "next" button
    maxwidth: "600",           // Integer: Max-width of the slideshow, in pixels
    navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
    manualControls: "",     // Selector: Declare custom pager navigation
    namespace: "rslides",   // String: Change the default namespace used
    before: function(){},   // Function: Before callback
    after: function(){}     // Function: After callback
  });

  $('.smallpic').click(function(e) {

    var target = $(e.target);
    
    if (target.is('img')) {
      var loc = $(this).attr("src");
      $('#main_image').attr("src",loc);
      $('#main_image').show();      
      $('#main_vid').hide();      
    } else if (target.is('video')) {
      var loc = $(this).children('source').attr("src");
      console.log(loc);
      $('#main_vid').attr("src",loc);
      $('#main_vid').show();      
      $('#main_image').hide();      
    }
  });

};

$(slide_ready);
$(document).on('page:load', slide_ready);