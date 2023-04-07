
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>

<!-- reference our style sheet -->

<link href="<c:url value="/content/css/style.css" />" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<div class="container">
		<div class="wrapper" id="wrapper">
			<div class="header" id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<h3>Save Customer</h3>
	<form:form action="saveCustomer" modelAttribute="customer"
		method="post">
		 <label>First Name:</label>
		<form:input path="firstName" class="form-control"/>
		
		<label>Last Name:</label>
		<form:input path="lastName" class="form-control" />
		
		<label>Email address</label>
		<form:input path="email" class="form-control" />
		<br>
		<input type="submit" value="Add"/>
		
	</form:form>


	<a href="${pageContext.request.contextPath}/customer/list">Back to Home page</a>
	</div>
	

</body>

</html>








