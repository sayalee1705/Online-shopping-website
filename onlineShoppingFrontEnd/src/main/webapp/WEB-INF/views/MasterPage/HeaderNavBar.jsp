<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Link for icons -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>
<title>Watch-IT!!!</title>
</head>
<body>
	<!-- Navigation -->
	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="${contextRoot}/home">Watch-IT!!!</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="${contextRoot}/home">Home <i class="fas fa-home"></i>
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item" id="about">
              <a class="nav-link" href="${contextRoot}/about">About Us</a>
            </li>
            <li class="nav-item" id="listProducts">
              <a class="nav-link" href="${contextRoot }/all/listProducts">View Products <i class="fab fa-product-hunt"></i></a>
            </li>
            <li class="nav-item" id="addProduct">
              <a class="nav-link" href="${contextRoot }/getProductForm"><i class="fas fa-plus"></i>Add Products</a>
            </li>
            <li class="nav-item" id="">
              <a class="nav-link" href="">Register <i class="fas fa-registered"></i></a>
            </li>
            <li class="nav-item" id="">
              <a class="nav-link" href="">Sign-In <i class="fas fa-sign-in-alt"></i></a>
            </li>
            <li class="nav-item" id="contact">
              <a class="nav-link" href="${contextRoot}/contact">Contact <i class="fas fa-phone"></i></a>
            </li>
            <li class="nav-item" id="">
              <a class="nav-link" href=""><i class="fas fa-cart-arrow-down"></i></a>
            </li>  
          </ul>
        </div>
      </div>
    </nav>
	
</body>
</html>