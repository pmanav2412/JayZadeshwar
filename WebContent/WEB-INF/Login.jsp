<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header.jsp" />
<div class="container" style="padding-top: 10px; ">
		

	<div class="col-6 offset-6 " >
			<div class="card" style="border: 2px solid gray">
				<div class="card-header bg-info text-white">
					Only Authorized Person can LogIn !
				</div>
				
		<div class="card-body">
			<form role="form" method='POST' action="<c:url value='/login' />">
			<div class="form-froup">
				<label for="Username">User name:</label>
				<input type="text" class="form-control" placeholder="Username" name="username"/>
			</div>
			<div class="form-froup">
				<label for="Password">Password:</label>
				<input type="password" class="form-control" placeholder="Password" name="password"/>
			</div>
			<!-- To secure The Credentials by sending every request with unique ID -->
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Login" name="submit" class="btn btn-primary" style="margin-top: 10px;" />
			</form>
			
			<div class="row" style="margin-top: 7px;">
				<div class="col-12">
					<c:if test="${not empty error }">
						<p class="alert-danger">${error }</p>
					</c:if>
					<c:if test="${not empty msg }">
						<p class="alert-danger">${msg }</p>
					</c:if>
			</div>
		</div>

	</div>
	</div>

</div>
</div>


</body>
</html>








<!-- Initial Login Form -->


<!-- <div class="col-sm-10 col-md-6 col-lg-10 " style="padding-left: 60%">
<form method="post" action="getData">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="username">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form> -->