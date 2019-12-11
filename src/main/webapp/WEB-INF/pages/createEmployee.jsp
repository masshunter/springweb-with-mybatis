<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create employee</title>
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
			<h3>회원등록</h3>
			${successMessage}
			
			<s:form method="post" modelAttribute="employee" action="createEmployee">
			  <table class="table table-dark">
			      <tr>
			        <th scope="row">이름</th>
			        <td>
			          <s:input path="fullname" />
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">이메일</th>
			        <td>
			          <s:input path="email" />
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">성별</th>
			        <td>
			          <s:radiobutton path="gender" value="M" /> 남자 
                      <s:radiobutton path="gender" value="F" /> 여자
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">취미</th>
			        <td>
			          <s:checkbox path="hobbies" value="sports" />Sports || 
				      <s:checkbox path="hobbies" value="game" />Game ||
				      <s:checkbox path="hobbies" value="movie" />Movie ||
				      <s:checkbox path="hobbies" value="painting" />Painting ||
				      <s:checkbox path="hobbies" value="baduk" />Baduk
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">국적</th>
			        <td>
			          <s:select path="country">
							<s:option value="Korea">한국</s:option>
							<s:option value="USA">미국</s:option>
							<s:option value="China">중국</s:option>
							<s:option value="Japan">일본</s:option>
							<s:option value="India">인도</s:option>
							<s:option value="Vietnam">베트남</s:option>
					  </s:select>
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">주소</th>
			        <td>
			          <s:textarea path="address" />
			        </td>
			      </tr>
			      <tr>
			        <th scope="row">#</th>
			        <td>
			          <input type="submit" value="등록" />
			        </td>
			      </tr>
			  </table>
			</s:form>
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