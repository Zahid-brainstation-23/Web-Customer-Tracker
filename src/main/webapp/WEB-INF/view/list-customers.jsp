
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<a href="showFormForAdd" class="btn btn-info">Add Customer</a>
		<div id="content">



			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">

					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td><a href="${pageContext.request.contextPath}/customer/showFormForUpdate?customerId=${tempCustomer.id}" >Update</a>
						|
						<a href="${pageContext.request.contextPath}/customer/deleteCustomer?customerId=${tempCustomer.id}" >Delete</a></td>
					</tr>

				</c:forEach>

			</table>

		</div>

	</div>


</body>

</html>








