<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- start --> <%@ include file="./includes/start.jsp"%>

<head>
<link rel='stylesheet' href='/resources/list/style.css'>

</head>

<body>
   <!-- header --> <%@ include file="./includes/header.jsp"%>
   
<main>
<div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider slider-height slider-padding sky-blue d-flex align-items-center">
   <div class="container">
		  <h3>파일 List</h3>
  <table class="table table-hover">
    <thead>
      <tr>
     	<th>파일번호</th>
        <th>파일이름</th>
      </tr>
    </thead> 
    <tbody>    
    <c:forEach items="${files }" var="files" varStatus="st">
    <tr>    
    <td>${files.fno }</td>
    <td>${files.fileOriName }</td>   
    </tr>    
    </c:forEach>
     </tbody>
  </table>
  <h3>스튜디오 List</h3>
   <table class="table table-hover">
    <thead>
      <tr>
     	<th>스튜디오번호</th>
        <th>스튜디오이름</th>
      </tr>
    </thead> 
    <tbody>
    <c:forEach items="${studio }" var="studio" varStatus="st">
    <tr>
    <td>${studio.studionum }</td>
    <td>${studio.studioname }</td>
    </tr>    
    </c:forEach>
    </tbody>
  </table>
  <h3>배우 List</h3>
   <table class="table table-hover">
    <thead>
      <tr>
     	<th>배우이름</th>
        <th>배우성별</th>
      </tr>
    </thead> 
    <tbody>
    <c:forEach items="${actor }" var="actor" varStatus="st">
    <tr>
    <td>${actor.actorname }</td>
    <td>${actor.gender }</td>
    </tr>    
    </c:forEach>
    </tbody>
  </table>
   <h3>디렉터 List</h3>
   <table class="table table-hover">
    <thead>
      <tr>
     	<th>디렉터이름</th>
        <th>디렉터성별</th>
      </tr>
    </thead> 
    <tbody>
    <c:forEach items="${director }" var="director" varStatus="st">
    <tr>
    <td>${director.directorname }</td>
    <td>${director.gender }</td>
    </tr>    
    </c:forEach>
    </tbody>
  </table>
   <h3>캐스트 List</h3>
   <table class="table table-hover">
    <thead>
      <tr>
     	<th>캐스트번호</th>
        <th>배우</th>
        <th>프로그램번호</th>
      </tr>
    </thead> 
    <tbody>
    <c:forEach items="${castmates }" var="castmates" varStatus="st">
    <tr>
    <td>${castmates.castmatesnum }</td>
    <td>${castmates.actor.actorname }</td>
    <td>${castmates.program.programnum }</td>
    </tr>    
    </c:forEach>
    </tbody>
  </table>
</div>

   </div>
   </div>
   </div>
   
</main>
   <!-- footer --> <%@ include file="./includes/footer.jsp"%>
   
   
   <!-- JS here --> <%@ include file="./includes/script.jsp"%>
</body>
</html>