<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="usb.*" %>
<%@include  file="beginning.jsp" %>
	<div class="container">
		<!-- <a href="catalog.jsp" class="btn btn-success btn-lg">Каталог</a> -->
		<div class="col-xs-12"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Сканиране</button></div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Сканиране...</h4>
      </div>
      <div class="modal-body">
        <div class="progress">
  <div class="progress-bar progress-bar-striped active" role="progressbar"
  aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width:73%">
    40%
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

 <table class="table table-bordered scan">
  <thead>
    <tr>
      <th>RFID</th>
      <th>Заглавие</th>
      <th>Рафт, на който се намира в момента</th>
      <th>Рафт, на който трябва да стои</th>
    </tr>
  </thead>
  <tbody>
  <tr>
      <th scope="row">8923319</th>
      <td>Бай Ганьо</td>
      <td>5</td>
      <td>11</td>
    </tr>
    <tr>
      <th scope="row"> </th>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <th scope="row"> </th>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
  </tbody>
  </table>
	</div>
<%@include  file="end.jsp" %>
