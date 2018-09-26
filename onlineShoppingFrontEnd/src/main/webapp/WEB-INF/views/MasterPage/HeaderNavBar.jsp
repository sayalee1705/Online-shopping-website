<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Link for icons -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>
<title>Watch-IT!!!</title>

<script type="text/javascript">
	function warn(){
		alert("sign-out sucess");
	}
</script>

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
           
            <c:if test="${pageContext.request.userPrincipal.name==null }">
	            <li class="nav-item" id="register">
	              <a class="nav-link" href="${contextRoot}/all/register">Register <i class="fas fa-registered"></i></a>
	            </li>
	            <li class="nav-item" id="signin">
	              <a class="nav-link" href="${contextRoot}/all/signIn">Sign-In <i class="fas fa-sign-in-alt"></i></a>
	            </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name !=null }">
            	<li class="nav-item" id="welcome"><a class="nav-link" href="#">Welcome ${pageContext.request.userPrincipal.name }</a></li>
	            <li class="nav-item" id="signout">
	              <a class="nav-link" href="<c:url value='/j_spring_security_logout'></c:url>" onclick="warn();">Sign-Out <i class="fas fa-sign-out-alt"></i></a>
	            </li>
            </c:if>
            
             <li class="nav-item" id="listProducts">
              <a class="nav-link" href="${contextRoot }/all/listProducts">View Products <i class="fab fa-product-hunt"></i></a>
            </li>
            
            <security:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item" id="addProduct">
              <a class="nav-link" href="${contextRoot }/admin/getProductForm"><i class="fas fa-plus"></i>Add Products</a>
            </li>
            </security:authorize>
            
            <security:authorize access="hasRole('ROLE_USER')">
            <li class="nav-item" id="cart">
              <a class="nav-link" href="${contextRoot }/cart/getcart"><i class="fas fa-cart-arrow-down"></i></a>
            </li>  
            </security:authorize>
            
          </ul>
        </div>
      </div>
    </nav>
	
</body>
</html>