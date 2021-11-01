<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- start -->
<%@ include file="../includes/start.jsp"%>

<head>
<link rel='stylesheet' href='/resources/list/style.css'>

</head>

<body>
	<!-- header -->
	<%@ include file="../includes/header.jsp"%>

	<main>


		<!-- Applic App Start -->
		<div class="applic-apps section-padding2">
			<div class="container-fluid">
				<div class="row">
					<!-- slider Heading -->
					<div class="col-xl-4 col-lg-4 col-md-8">
						<div class="single-cases-info mb-30">
							<h3>
								찜한🥰<br> 영화 목록
							</h3>
							<p></p>
						</div>
					</div>
					<!-- OwL -->
					<div class="col-xl-8 col-lg-8 col-md-col-md-7">
						<div class="app-active owl-carousel">

							<c:forEach items="${likelists }" var="likelist"
								varStatus="status">
								<c:if test="${likelist.program.category eq 'movie'}">

									<a href="/program/view/${likelist.program.programnum}"> <img
										src="/images/${likelist.program.files.filename}" style="height:400px"> </a>
								</c:if>
							</c:forEach>


						</div>





					</div>
				</div>
			</div>
		</div>
		<!-- Applic App End -->

		<!-- Applic App Start -->
		<div class="applic-apps section-padding2">
			<div class="container-fluid">
				<div class="row">
					<!-- slider Heading -->
					<div class="col-xl-4 col-lg-4 col-md-8">
						<div class="single-cases-info mb-30">
							<h3>
								찜한🥰<br> TV프로그램 목록
							</h3>
							<p></p>
						</div>
					</div>
					<!-- OwL -->
					<div class="col-xl-8 col-lg-8 col-md-col-md-7">
						<div class="app-active owl-carousel">

							<c:forEach items="${likelists }" var="likelist"
								varStatus="status">
								<c:if test="${likelist.program.category eq 'programs'}">


									<a href="/program/view/${likelist.program.programnum}"> <img
										src="/images/${likelist.program.files.filename}"></a>
								</c:if>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Applic App End -->

	</main>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>


	<!-- JS here -->
	<%@ include file="../includes/script.jsp"%>
</body>
</html>