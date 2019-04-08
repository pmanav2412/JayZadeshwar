<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 		<div class="container">
 			<%@ include file="Header.jsp" %>
 			
 			<div class="row">
 				<div class="col-12">
 					<p class="h1"> Search Member</p>
 				</div>
 			</div>
 			
 		
 			<div class="row">
 				<div class="col-8">
 				
 				<form:form cssClass="form-horizontal" role="form" id="membForm">
 					<div class="form-group row">
 						
 						<label for="email" class="col-2 col-form-label">E-mail ID:</label>
 						<div class="col-8">
 							<input type="text" class="form-control" placeholder="Enter Email ID" name="email" id="email">
 						</div>
 						
 						<div class="col-2">
 							<button type="submit" id="btn-search" class="btn btn-primary">Search</button>
 						
 						</div>
 					</div>
 				</form:form>
 				
 				</div>
 			</div>
 			
 		    <div class="row" id="divResults">
 		    	<div class="col-8">
 		    		<div class="card">
 		    		
 		    			<div class="card-herder bg-success text-white">
 		    				<h3>Member's Details</h3>
 		    			</div>
 		    			
 		    			<div class="card-body">
 		    				<div id=""></div>
 		    				<div id=""></div>
 		    				<div id=""></div>
 		    				<div id=""></div>
 		    				<div id=""></div>
 		    				<div id=""></div>
 		    			</div>
 		    			
 		    		</div>
 		    	</div>
 		    
 		    </div>
 		    
 		    <div class="row" id="divError">
 		    	<div class="col-8">
 		    		<p class="alert alert-danger">Requested Member's Details Not Found!</p>
 		    	</div>
 		    </div>
 		
 		</div>
 		
 		<script>
 			$(document).ready(function($){
 				$('#divResults').hide();
 				$('#divError').hide();
 			});
 			function enableSearchButton(flag){
 				$("#btn-search").prop("disabled",flag);
 			}
 		</script>
 		
</body>
</html>