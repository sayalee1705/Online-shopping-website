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
			break;
		case 'Add Products' :
			$('#addProduct').addClass('active');
			break;
		case 'Register' :
			$('#register').addClass('active');
			break;
		case 'Sign-In' :
			$('#signin').addClass('active');
			break;	
		case 'Cart' :
			$('#cart').addClass('active');
			break;
		default:
			$('#home').addClass('active');	
			break;
	}
	
});