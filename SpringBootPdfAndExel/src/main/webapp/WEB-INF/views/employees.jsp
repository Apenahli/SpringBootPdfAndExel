<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Insert title here</title>
</head>
<body>
	<br>
	<a href="${pageContext.request.contextPath}/createExcel"
		style="float: right; margin: 10px;"><img
		src="<c:url value='images/exel.png'/>" alt="Photo of Youthful William"
		id="pic" style="width: 50px;" /></a>

	<a href="${pageContext.request.contextPath}/createPdf"
		style="float: right; margin: 10px;"><img
		src="<c:url value='images/pdf.png'/>" alt="Photo of Youthful William"
		id="pic" style="width: 50px;" /></a>



	<c:if test="${not empty birthdayEmployee}">

		<c:forEach var="birthday" items="${birthdayEmployee}">
     Tuday  ${birthday.firstName} is birthday

	<i class="fa fa-birthday-cake" style="font-size: 24px; color: #9F26C2"></i>
			<i class="fa fa-gift" style="font-size: 24px; color: #FF5733"></i>

			<img src="<c:url value='images/Cake-512.png'/>"
				alt="Photo of Youthful William" id="pic" style="width: 50px;" />
			<br>
		</c:forEach>

	</c:if>

	<input type="text" style="width: 30%" id="search" name="search" />

	<table class="table table-striped" id="customers" class="table ">
		<tr>
			<th scope="col">Id</th>
			<th scope="col">Name</th>
			<th scope="col">Surname</th>
			<th scope="col">Email</th>
			<th scope="col">PhoneNumber</th>
			<th scope="col">Birthday</th>
		</tr>

		<c:forEach var="employee" items="${employees}">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.firstName}</td>
				<td>${employee.lastName}</td>
				<td>${employee.email}</td>
				<td>${employee.phoneNumber}</td>
				<td>${employee.dateOfBirth}</td>
			</tr>
		</c:forEach>
	</table>




	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>
	<script src="<c:url value="/resources/static/js/search.js"/>"></script>


</body>
</html>