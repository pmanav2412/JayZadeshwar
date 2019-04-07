<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: light;">
<jsp:include page="Header.jsp" />

<div class="row">
 	<div class="col-12">
 		<c:url value="/logout" var="logoutUrl"></c:url>
 		
 		<form action="${logoutUrl}" method="post" id="logoutForm">
 			<input type="hidden" name="${_csrf.parameterName}"
 			value="${_csrf.token}" />
 		</form>
 		
 		<script >
 			function formSubmit(){
 				document.getElementById("logoutForm").submit();
 			}
 		
 		</script>
 	
 		<p class="display-5">
 		 welcome : ${username} , <a href="javascript:formSubmit()">
 		 Logout </a>
 		 </p>
 	</div>
</div>

<div style="margin: auto;width: 90% ; margin-top: 10px;">
<table class="table table-striped " style="border: 2px solid green">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Parents(F/M)</th>
      <th scope="col">PHONE NUMBER</th>
       <th scope="col">EMAIL</th>
      <th scope="col">ADDRESS(USA/IND)</th>
    </tr>
  </thead>

  <tbody>
    <c:forEach var="Member" items="${Members}">
    <tr>
      <td>${Member.getFirstName()} ${Member.getMiddleName()} Patel</td>
      <td>${Member.getParentsName()}</td>
      <td>${Member.getPhoneNumber()} / ${Member.getHomenumber()}</td>
         <td>${Member.getEmail()}</td>
      <td>${Member.getState()} / ${Member.getZadeshwarAddress()}</td>
    </tr>
      </c:forEach>
  </tbody>

</table>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>