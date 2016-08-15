<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="usb.*" %>
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
	
	<div class="wrapper">
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
        <li><a href="index.jsp">Началана страница</a></li>
        <li><a href="catalog.jsp">Каталог</a></li>
        <li><a href="scan.jsp">Сканиране на книги</a></li> 
        <li><a href="activity.jsp"> Последни действия</a></li> 
       </ul>
    </div>
		</div>
	</nav>
		<div class="center">
		<div class="content">
		<div class="container">
			<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><h4>Каталог <span class="btn-group pull-right">
        <a href="#" class="btn btn-default btn-sm">## Lock</a>
        <a href="#" class="btn btn-default btn-sm">## Delete</a>
        <a href="#" class="btn btn-default btn-sm">## Move</a>
    </span></h4></div>
  <div class="panel-body">
    <p>...</p>
  </div>

  <!-- Table -->
  <table class="table">
  <thead>
    <tr>
      <th>#</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Username</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
  </table>
</div>
		</div>
		</div>
		</div>
		<footer class="footer">
	<div class="container-fluid"><p><b><em>LibRFID <script>document.write(new Date().getFullYear())</script>.</em></b></p></div>
	</footer>
	</div>
	<script>
	b = window.location.pathname.split("/").slice(-1)[0];
	  $('ul a[href="' + b + '"]').parent().addClass('active');
</script>
</body>
</html>