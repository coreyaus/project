function ratingInit() {
  $('.rating').raty({
		path: '/assets',
		scoreName: 'comment[rating]'
  });
}
function ratedInit() {
	$('.rated').raty({
		path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
}

$(document).on('ready page:load', function(){
	// Initialise the "raty" plugin
	ratingInit();
	ratedInit();
	// Initialise the "elevateZoom" plugin
	$('.img-zoom').elevateZoom();
});

