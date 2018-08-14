$(function(){
	switch(menu){
		case 'About Us':
			$('#about').addClass('active');
			break;
		case 'Contact':
			$('#contact').addClass('active');	
			break;
		case 'View Products' :
			$('#listProducts').addClass('active');
		default:
			$('#home').addClass('active');	
			break;
	}
});