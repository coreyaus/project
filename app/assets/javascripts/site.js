$(document).on('ready page:load', function(){
	// Initialise the "raty" plugin
  $('.rating').raty({
		path: '/assets',
		scoreName: 'comment[rating]'
  });
	$('.rated').raty({
		path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});

	// Initialise the "elevateZoom" plugin
	$('.img-zoom').elevateZoom();

});

