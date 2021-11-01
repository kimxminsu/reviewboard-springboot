<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp"%>


<div class="container">
  <h2>Board List(${count })</h2>
    <c:forEach items="${lists.content }" var="program" varStatus="st">
   	<div >
   		<a href="/program/view/${program.programnum}"><img src="/images/${program.files.filename}" style="width:100px;height:100px;"></a>
  	 </div>
    </c:forEach>
    


  <div class="d-flex justify-content-between mt-5" >
   <ul class="pagination">
  		<c:if test="${lists.first == false }">
  		<li class="page-item"><a class="page-link" href="?page=${lists.number-1 }">이전</a></li>
  		</c:if>
  		
  		<c:if test="${lists.last == false }">
  		<li class="page-item"><a class="page-link" href="?page=${lists.number+1 }">다음</a></li>
  		</c:if>
  </ul>

</div>
</div>


</body>
</html>

 
 