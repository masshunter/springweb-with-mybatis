<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<nav id="myNav" class="nav navbar-default navbar-fixed-top">
  <div class="container" id="page-header">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="${pageContext.request.contextPath}/">홈</a></li>
        <li><a href="${pageContext.request.contextPath}/employees">회원명단</a></li>
        <li><a href="${pageContext.request.contextPath}/createEmployee">회원등록</a></li>
      </ul>
    </div>
  </div>
</nav>
