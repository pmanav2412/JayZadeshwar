<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>

 		<div class="container" style="margin-top:15px;">
 			
 			
 			<!-- <div class="row">
 				<div class="col-12">
 					<p class="h1"> Search Member</p>
 				</div>
 			</div> -->
 			
 		
 			<%-- div class="row">
 				<div class="col-8">
 				<c:url var="findMember" value="/getData/Member" /> 
 				<form:form cssClass="form-horizontal" role="form" id="membForm" action="${findMember} " method="POST">
 					<div class="form-group row">
 						
 						<label for="email" class="col-2 col-form-label">E-mail ID:</label>
 						<div class="col-8">
 							<input type="text" class="form-control" placeholder="Enter Email ID" name="Email" id="email">
 						</div>
 						
 						<div class="col-2">
 							<button type="submit" id="btn-search" class="btn btn-primary">Search</button>
 							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 						
 						</div>
 					</div>
 				</form:form>
 				
 				</div>
 			</div> --%>
 			
 		    <div class="row" id="divResults">
 		    	<div class="col-8">
 		    		<div class="card">
 		    		
 		    			<div class="card-herder bg-success text-white">
 		    				<h3>Member's Details</h3>
 		    			</div>
 		    			
 		    			<div class="card-body">
 		    				<div ><b>Name :</b> ${Member.getFirstName()} ${Member.getMiddleName()} ${Member.getLastName()} </div>
 		    				<div ><b>Spouse name : </b>  ${Member. getSpouseName()}</div>
 		    				<div ><b>Parents name : </b> ${Member.getParentsName()}</div>
 		    				<div ><b>Address : </b>  ${Member.getStreetName()} ${Member.getCity()} ${Member.getState()}</div>
 		    				<div ><b>Email : </b>  ${Member.getEmail()}</div>
 		    				<div ><b>Phone Number : </b> ${Member.getPhoneNumber()}/ ${Member.getHomenumber()}   </div>
 		    				<div ><b>Zadeshwar Address : </b> ${Member.getZadeshwarAddress()}</div>
 		    			</div>
 		    			
 		    		</div>
 		    	</div>
 		    
 		    </div>
 		    <a href="" class="btn btn-warning" style="margin-top:20px;"> Back </a>
 		    
 		    <!-- <div class="row" id="divError">
 		    	<div class="col-8">
 		    		<p class="alert alert-danger">Requested Member's Details Not Found!</p>
 		    	</div>
 		    </div> -->
 		
 		</div>
 		<script>
 		var http = new XMLHttpRequest();
 		http.open("GET","http://localhost:8080/JayZadeshwar/Members");
 		http.send();
 		
 		http.onreadystatechange = function(){
 		   console.log(http.responseText);
 		}
 		
 		</script>
 		<!-- <script>
 			$(document).ready(function($){
 				$('#divResults').hide();
 				$('#divError').hide();
 				$('#membForm').submit(function(event){
 					enableSearchButton(false);
 					event.preventDefault();
 					searchViaAjax();
 				})
 			});
 			
 			function enableSearchButton(flag){
 				$("#btn-search").prop("disabled",flag);
 			}
 			
 			function searchViaAjax(){
 				var memb ={}
 				memb["Email"]=$("#email").val();
 				$.ajax({
 					type : "POST",
 					contentType : "application/json",
 					uri : "http://localhost:8080/JayZadeshwar/Member",
 					data : JSON.stringify(memb),
 					dataType : 'json',
 					timeout : 100000,
 					success : function(data)
 							{
 								display(data);
 							},
 					error : function(e){
 								$('#divResults').hide();
 								$('#divError').show();
 							},
 					done : function(e){
 								enableSearchButton(true);
 							}
 					
 			});
 			}
 			
 			function display(data){
 				$('#FirstName').html("something: " + data["FirstName"]);
 				$('#LastName').html("something: " + data["FirstName"]);
 				$('#MiddleName').html("something: " + data["FirstName"]);
 				$('#q').html("something: " + data["FirstName"]);
 				$('#w').html("something: " + data["FirstName"]);
 				$('#e').html("something: " + data["FirstName"]);
 				$('#divError').hide();
 				$('#divResults').show();
 				
 			}
 		</script>
 		 -->
		

</body>
</html>