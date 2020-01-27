<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<!DOCTYPE html>
<html>
    
   

	<table class="table table-striped" id="customers">
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

</html>