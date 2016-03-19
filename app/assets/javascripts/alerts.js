$(function(){
	//$('.alert').delay(3000).fadeOut();
	$('.flash-close').on('click', function(){
		$(this).closest('.alert').fadeOut();
	});
});
