<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaccine Management System</title>
<%@include file="component/style1.jsp"%>
</head>
<body>
	<div class="container">
		<div class="screen">
			<div class="screen__content">
				<form class="login" action="login" method="post">
					<div class="login__field">
						<i class="login__icon fas fa-user"></i> <input type="text"
							class="login__input" placeholder="Email" name="email">
					</div>
					<div class="login__field">
						<i class="login__icon fas fa-lock"></i> <input type="password"
							class="login__input" placeholder="Password" name="password">
					</div>
					<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
					<button class="button login__submit">
						<span class="button__text">Log In</span> <i
							class="button__icon fas fa-chevron-right"></i>
					</button>
				</form>
			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>
</body>
</html>