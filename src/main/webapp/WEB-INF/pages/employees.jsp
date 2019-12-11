<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
  <%@include file="css/myStyle.css" %>
</style>
<script>
  <%@ include file="js/pageWorker.js" %>
</script>
</head>
<body>
  <jsp:include page="_header.jsp"></jsp:include>
  <div class="container" id="main">
    <div class="container" id="dummy-front"></div>
    <div class="container" id="content">
      <h3>사원명단</h3>
  ${successMessage}
  <a href="${pageContext.request.contextPath}/createEmployee">사원등록</a>
  <table class="table table-hover">
    <thead id="my-thead">
      <tr>
       <th>이름</th>
       <th>이메일</th>
       <th>성별</th>
       <th>취미</th>
       <th>국가</th>
       <th>도시</th>
       <th>정보관리</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="emp" items="${employees}">
      <c:url var="deleteLink" value="/deleteEmployee">
        <c:param name="employeeId" value="${emp.id}"/>
      </c:url>
      <c:url var="editLink" value="/editEmployee">
        <c:param name="employeeId" value="${emp.id}"/>
      </c:url>
      <tr>
        <td>${emp.fullname}</td>
        <td>${emp.email}</td>
        <td>${emp.gender}</td>
        <td>${emp.hobbies}</td>
        <td>${emp.country}</td>
        <td>${emp.address}</td>
        <td>
          <a href="${deleteLink}" onclick="if(!confirm('정말 삭제하시겠습니까?')) return false;">정보삭제</a>
          |<a href="${editLink}">정보편집</a>
        </td>
      </tr>
      </c:forEach>
      </tbody>
    </table>
    </div>
    <div class="container" id="dummy-tail"></div>
  </div>
  
  <script>
    $(document).ready(function(){
    	setHeaderLink();
    })
  </script>
</body>
</html>