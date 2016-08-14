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
  <link href='https://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
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
			<div class="navbar-brand">LiberFID</div>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Началана страница</a></li>
        <li><a href="catalog.jsp">Каталог</a></li>
        <li><a href="scan.jsp">Сканиране на книги</a></li> 
        <li><a href="activity.jsp"> Последни действия</a></li> 
       </ul>
    </div>
		</div>
	</nav>
	<div class="wrapper">
		<div class="content">
		<div class="container-fluid">
			<div class="col-xs-12 msg"><p>Здравейте, във вашата библиотека в момента са налични $4331 книги.</p></div>
			<div class="col-sm-4 col-xs-12"><div class="container-fluid"></div><a href="check.jsp" class="btn btn-warning btn-lg">Проверка на книгите</a></div>
			<div class="col-sm-4 col-xs-12"><a href="add.jsp" class="btn btn-success btn-lg">Добавяне на книга</a></div>
			<div class="col-sm-4 col-xs-12"><a href="remove.jsp" class="btn btn-danger btn-lg">Премахване на книга</a></div>
		</div>
		</div>
	</div>
	</body>
</html>