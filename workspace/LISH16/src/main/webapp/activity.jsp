<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="usb.*" %>
<%@include  file="beginning.jsp" %>
		<div class="container">
			<div class="panel panel-default">
			  <div class="panel-heading">Последни действия</div>
			  <div class="panel-body">
			  	<table class="table">
  <thead>
    <tr>
      <th> </th>
      <th>Активност</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><script>document.write(Date().slice(0,25))</script></th>
      <td><p>$Книга1 беше премахната.</p></td>
	 </tr>
	 <tr>
	 	<th scope="row"><script>document.write(Date().slice(0,25))</script></th>
      <td><p>Книгите бяха сканирани.</p></td>
	 </tr>
    
  </tbody>
  </table>
			  </div>
			</div>
		</div>
<%@include  file="end.jsp" %>