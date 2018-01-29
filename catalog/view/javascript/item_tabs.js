// Tabs Item card
$('.tabs-nav a').on('click', function (e) {
   e.preventDefault();
   var toGo = $(this).attr('href');
   var parent = $(this).closest('tabs-nav a');
   if (!parent.hasClass('is-active')) {
         $('.tabs-nav li a').removeClass('is-active');
         $('.tabs-content').removeClass('is-active');
         $(toGo).addClass('is-active');
         $(this).addClass('is-active');
   } else {
   }
});