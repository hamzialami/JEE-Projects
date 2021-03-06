<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.eintern.hibernateTest.* , javax.servlet.http.*" %>
<% AuthTest test = (AuthTest)session.getAttribute("authorize");
	if(test == null){
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

 %>    
    
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Editing</title>
	
	<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>

	<!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
	</style>
	
	
	<script type="text/javascript">
		function checkForm(){
					var email = document.getElementById("Uname");
					var fname = document.getElementById("fname");
					var lname = document.getElementById("lname");
					var password = document.getElementById("password");
					
					if(email.value.length == "" || email.value.length == null){
						alert("You must insert a email!");
						email.focus();
						//return false;
					}
					
					if(fname.value.length == "" || fname.value.length == null){
						alert("You must insert a First Name!");
						fname.focus();
						//return false;
					}
					if(lname.value.length == "" || lname.value.length == null){
						alert("You must insert a Last Name!");
						lname.focus();
						//return false;
					}
					if(password.value.length == "" || password.value.length == null){
						alert("You must insert a Password!");
						password.focus();
						//return false;
					}
				}	
		</script>

</head>
<body>

	<div class="bs-example">
		<h2 class="form-signin">Add User to Database </h2>
		<form  method="POST" action="adminRegistrationpath">
			<table class="table">
				<tr class="success">
						<th>Username</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Password</th>
						<th>Option</th>
					</tr>
				<tr class="info">
					<td  colspan="1"><input type="email" name="Uname" id="Uname" required></td>
				
				
					<td  colspan="1"><input type="text" name="fname" id="fname" required pattern="\w+"></td>
				
		
					<td  colspan="1"><input type="text" name="lname" id="lname" required pattern="\w+"></td>
				
					<td  colspan="1"><input type="password" name="password" id="password" required pattern="\w+"></td>
				
					<td colspan="1"><input  type="submit"  name="submit" onclick="checkForm()"/></td>
				
				</tr>
			</table>
		</form>
	</div>

</body>
</html>