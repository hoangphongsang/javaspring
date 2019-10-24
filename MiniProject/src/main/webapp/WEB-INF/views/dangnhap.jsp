<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body-login">
	<div id="body-flex-login">
		<div id="container-login">
			<div id="container-login-left">
				<div id="header-top-left" class="header-login">
					<span style="font-size: 48px;">Welcome</span></br>
					<span class="container-login-left-text">the best your choice</span>
				</div>
				<div id="header-bottom-left">
					<p><img alt="icon" src='<c:url value="/resource/img/icon_circle.png"/>'><span>hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii</span></p>
					<p><img alt="icon" src='<c:url value="/resource/img/icon_circle.png"/>'><span>hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii</span></p>
					<p><img alt="icon" src='<c:url value="/resource/img/icon_circle.png"/>'><span>hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii</span></p>	
				</div>
			</div>
			<div id="container-login-right">
				<div id="header-top-right"  class="header-login">
					<span class="actived">Đăng nhập</span> / <span>Đăng kí</span>
				</div>
				<div id="container-center-login">
					<form action="">
						<input class="text-input input-icon-email" placeholder="Email" type="text"/></br>
						<input class="text-input input-icon-password" placeholder="Password" type="text"/></br>
						<input class="primary-button" type="submit" value="Đăng nhập"/></br>
					</form>
				</div>
				<div id="social-icon">
					<img alt="icon" src='<c:url value="/resource/img/facebook.png"/>'>
					<img alt="icon" src='<c:url value="/resource/img/instagram.png"/>'>
				</div>
			</div>
		</div>
	</div>
</body>
</html>