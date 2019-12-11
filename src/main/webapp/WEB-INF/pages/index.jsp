<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
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
	      <h2>MyBatis 시연 홈페이지</h2>
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
