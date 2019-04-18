<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<meta charset="UTF-8">

</head>
<body>
	<c:url var="findMember" value="/getData/Members" />

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Jay Zadeshwar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${findMember }">All Members <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
  </div>
</nav>


</body>
</html>





<%-- <div class="row" style="background: rgb(213,213,213)">
		<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<span class="header clearfix">
				<h3 class="text-muted" style="padding: 10px;">JAY ZADESHWAR</h3>
				 
			</span>
			<span>	</span>
		</div>


	</div> --%>