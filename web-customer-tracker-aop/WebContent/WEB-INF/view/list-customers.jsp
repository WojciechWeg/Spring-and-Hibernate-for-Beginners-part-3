<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css"/>
	
	
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2> CRM - Customer Relational Manager</h2>
		</div>
	</div>
	
	
	<div id="container">
		<div id="content">
			<!-- put new button: Add Customer -->
		
			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd';return false;"
				class="add-button"
				/>
		
			<!--  add html table here -->

			<table>
			
				<tr>
					<th> First Name </th>
					<th> Last Name </th>
					<th> Email </th>
					<th> Action </th>
				</tr>
			
				<c:forEach var="tempCustomers" items="${customers}">
					
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomers.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomers.id}" />
					</c:url>
					<tr>
						<td> ${tempCustomers.firstName}</td>
						<td> ${tempCustomers.lastName}</td>
						<td> ${tempCustomers.email}</td>
						<td>
							<a href="${updateLink}"
							 >Update</a>
							|
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
					</tr>
				
				 </c:forEach>
			
			</table>
	
		</div>
	</div>
	
</body>

</html>