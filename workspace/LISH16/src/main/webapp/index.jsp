<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css">
	<title>LIBRfid</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="contatiner-fluid">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">LibeRfID</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li> 
        <li><a href="#">Page 3</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
		</div>
	</nav>
	<div class="container">
		<div class="ctrl-btn">
			<a href="check.jsp" class="btn btn-warning btn-lg">Проверка на книгите</a>
			<a href="add.jsp" class="btn btn-success btn-lg">Добавяне на книга</a>
			<a href="remove.jsp" class="btn btn-danger btn-lg">Премахване на книга</a>
		</div>
	</div>
</body>
</html>