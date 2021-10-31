<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<body>
	<div class="jumbotron" style="margin-bottom: 0">
		<h1>MyBoard</h1>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-3">
		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/">HOME</a></li>
			<li class="nav-item"><a class="nav-link" href="/program/movielist">Movie List</a></li>
			<li class="nav-item"><a class="nav-link" href="/program/programlist">Program List</a></li>
			
		<sec:authorize access="isAuthenticated()">
			<li class="nav-item"><a class="nav-link" href="/mypage/list">Mypage</a></li>
		</sec:authorize>
			
		<sec:authorize access="hasRole('ROLE_ADMIN')" >
			<li class="nav-item"><a class="nav-link" href="/program/list">program manage</a></li>
			<li class="nav-item"><a class="nav-link" href="/program/insert">program Insert</a></li>	
			<li class="nav-item"><a class="nav-link" href="/directorinsert">director insert</a></li>	
			<li class="nav-item"><a class="nav-link" href="/castmatesinsert">cast insert</a></li>
			<li class="nav-item"><a class="nav-link" href="/actorinsert">actor insert</a></li>
			<li class="nav-item"><a class="nav-link" href="/studioinsert">studio insert</a></li>		
			<li class="nav-item"><a class="nav-link" href="/fileinsert">file insert</a></li>
			<li class="nav-item"><a class="nav-link" href="/alist">All list</a></li>
			<li class="nav-item"><a class="nav-link" href="/userlist">User list</a></li>
		</sec:authorize>
		
		</ul>
		
		<ul class="navbar-nav">
			<sec:authorize access="isAnonymous()">
				<li class="nav-item"><a class="nav-link" href="/login">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">회원가입</a></li>
			</sec:authorize>
			
			<sec:authorize access="isAuthenticated()">
				<li class="nav-item">
				<a class="nav-link" href="/logout">
				로그아웃(<sec:authentication property="principal.user.username"/>)/${principal.user.username }</a>
				</li>
		
			</sec:authorize>
		</ul>
		
	</nav>
	
	
	
	
	