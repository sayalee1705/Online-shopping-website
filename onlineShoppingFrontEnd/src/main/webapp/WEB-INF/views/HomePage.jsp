<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
	/* Styling for font on carousel */
	.bottom-left {
    position: absolute;
    bottom: 40px;
    left: 16px;
    font-family: Berlin Sans FB Demi;
    font-size: 20px; 
}
h3{
	color:white;
}
</style>
<title>Insert title here</title>
</head>
<body>
<!-- Home Page Content -->
<div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h1 class="my-4">Watch-IT</h1>
          <!-- Sidebar -->
          <%@ include file="./MasterPage/Sidebar.jsp" %>
        </div>
        <!-- /.col-lg-3 -->
        
        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="resources/images/md1.jpg" alt="First slide">
                <div class="bottom-left"><h3>UpTo <b>80%</b> Off*</h3></br>
               		<h4 style="color:white;"><b>For Limited Time Only</b></h4>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="resources/images/md2.jpg" alt="Second slide">
                <div class="bottom-left"><h2 style="font-family:Bradley Hand ITC; color:white;"><b>Breguet</b></h2></br>
                	<h4 style="font-family:Times New Roman; color:white;"><b>Swatch-owned brand of luxury watches</b></h4>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="resources/images/md3.jpg" alt="Third slide">
                <div class="bottom-left"><h2 style="font-family:Arial Rounded MT Bold; color:white;">Don't Be Late </h2></br>
                	<h4 style="font-family:Arial Rounded MT Bold; color:white;"><u>Shop Now ></u></h4>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="resources/images/md4.jpg" alt="Forth slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
					
          <div class="row">
          	<div class="col-md-12">
          		<nav aria-label="breadcrumb">
  					<ol class="breadcrumb">
    					<li class="breadcrumb-item"><a href="#"><i><b>Best Sellers</b></i></a></li>
  					</ol>
				</nav>
          	</div>
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg7.jpg" height="150px" width="150px" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Roadster</a>
                  </h4>
                  <h5 class="card-title">
                  	Black/Black Synthetic Watch
                  </h5>
                  <h5><i class="fas fa-rupee-sign"></i> 2999.0</h5>
                  <p class="card-text">Black/Black Synthetic Watch Men's Wear</p>
                  <p class="card-text">Analog Watch</p>
                  <p class="card-text">Black Dail</p>
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg8.jpg" height="150px" width="150px" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Cartier</a>
                  </h4>
                  <h5><i class="fas fa-rupee-sign"></i> 3999.0</h5>
                  <p class="card-text">Royal Blue Watch Unisex</p>
                  <p class="card-text">Analog Watch</p>
                  <p class="card-text">Blue Dail</p>
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg9.jpeg" height="150px" width="150px" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Fast Track</a>
                  </h4>
                  <h5><i class="fas fa-rupee-sign"></i> 999</h5>
                  <p class="card-text">Black Unisex Watch</p>
                  <p class="card-text">Analog + Digital</p>
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg10.jpg" height="150px" width="150px" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Skmei Watch Kid's Wear</a>
                  </h4>
                  <h5><i class="fas fa-rupee-sign"></i> 999</h5>
                  <p class="card-text">With Start, Reset, Light Modes</p>
                  <p class="card-text">Digital</p>
                  <p class="card-text">Blue/Black Dail</p>
                  
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg11.jpg" height="150px" width="150px" alt=""></a>
                <div class="card-body"> 
                  <h4 class="card-title">
                    <a href="#">Marvel Watches for Boy's</a>
                  </h4>
                  <h5><i class="fas fa-rupee-sign"></i> 799</h5>
                  <p class="card-text">Light Blue Belt</p>
                  <p class="card-text">Analog</p>
                  <p class="card-text">Limited Edition Captain America</p>
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="resources/images/proimg12.jpg" height="150px" width="150px" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Casio</a>
                  </h4>
                  <h5><i class="fas fa-rupee-sign"></i> 999</h5>
                  <p class="card-text">Casio Limited Edition Watches for Ladies</p>
                  <p class="card-text">Steel Pink Body</p>
                  <p class="card-text">Digital</p>
                </div>
                <div class="card-footer">
                  <p class="card-text">Visit Products To Buy</p>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>

</body>
</html>