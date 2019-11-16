<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<title>iGi Rail Project</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js">


</script>

<script>
$(document).ready(function(){

    //active state  
    $(function() {
			 $('li a').click(function(e) {
			e.preventDefault();
			$('a').removeClass('active');
			$(this).addClass('active');
		});
    });
});


</script>
<head>

  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="header.html">
  <link rel="icon" href="${pageContext.request.contextPath}/resources/image/icon.png" type="image/ico">
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

  
  
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
    <link type="text/css" rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body ng-app="">
<div id="">
<div class="jumbotron" style="background-image:  url(${pageContext.request.contextPath}/resources/image/rail1.jpg); height: 150px; background-size: cover;">
  <h3>Welcome To Railway Reservation System</h3>
 <span> <p>I am Hamudur</p>
  
</div>

<div w3-include-html="header.html"></div>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="" data-toggle="modal" data-target="#book">Book Ticket</a></li>
      <li><a href="" data-toggle="modal" data-target="#register">Register</a></li>
      <li><a href="/igiRailProject/userPanel/userLogin">Dashboard</a></li>
      <li><a href="#"  style="color: red">Logout</a></li>
    </ul>
  </div>
</nav>
</div>