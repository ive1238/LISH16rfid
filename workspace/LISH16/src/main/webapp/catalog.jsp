<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="usb.*" %>
<%@include  file="beginning.jsp" %>
		<div class="container">
			<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading"><h2>Каталог <span class="btn-group pull-right">
        <a href="#" class="btn btn-success btn-sm" id="myBtn"><span class="glyphicon glyphicon-plus"></span> Добавяне на книга</a>
    </span></h2>
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-book"></span> Добавяне на книга</h3>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="title"><span class="glyphicon glyphicon-text-background"></span> Заглавие</label>
              <input type="text" class="form-control" id="title" placeholder="Въведете заглавие на книгата" required>
            </div>
            <div class="form-group">
              <label for="author"><span class="glyphicon glyphicon-user"></span> Автор</label>
              <input type="text" class="form-control" id="author" placeholder="Въведете автор на книгата" required>
            </div>
            <div class="form-group">
              <label for="genre"><span class="glyphicon glyphicon-list"></span> Жанр</label>
               <select class="form-control" id="genre" required>
    				<option>Въведете жанр</option>
				    <option value="$genre1">$Жанр 1</option>
				    <option value="$genre2">$Жанр 2</option>
				    <option value="$genre2"">$Жанр 3</option>
 			  </select>
            </div>
            <div class="form-group">
              <label for="RFID number"><span class="glyphicon glyphicon-tags"></span> RFID код</label>
              <input type="number" class="form-control" id="rfid" placeholder="Въведете код на чипа" required>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Добавяне</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
      </div>
  </div>
    </div>
  <div class="panel-body">
  <form action="#">
  <p>Филтриране на книги:</p>
  <input type="number" class="form-control" id="rfid_sch" placeholder="По RFID код на чипа">
  <input type="text" class="form-control" id="title_sch" placeholder="По заглавие">
  <select class="form-control" id="author_sch">
    				<option>По автор</option>
				    <option value="$author1">$Автор 1</option>
				    <option value="$author2">$Автор 2</option>
				    <option value="$author3"">$Автор 3</option>
  </select>
  <select class="form-control" id="genre_sch">
    				<option>По жанр</option>
				    <option value="$genre1">$Жанр 1</option>
				    <option value="$genre2">$Жанр 2</option>
				    <option value="$genre3"">$Жанр 3</option>
  </select>
  <span class="btn-group pull-right">
  	<button type="submit" class="btn btn-default btn-sm" id="myBtn1"><span class="glyphicon glyphicon-filter"></span> Филтрирай</button>
  </span>
  </form>
  </div>
  

  <!-- Table -->
  <table class="table">
  <thead>
    <tr>
      <th>RFID</th>
      <th>Заглавие</th>
      <th>Автор</th>
      <th>Жанр</th>
      <th>Действия</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1234567</th>
      <td>Под игото</td>
      <td>Иван Вазов</td>
      <td>Исторически роман</td>
      <%@ include file="actions.html" %>
    </tr>
    <tr>
      <th scope="row">8923319</th>
      <td>Бай Ганьо</td>
      <td>Алеко Константинов</td>
      <td>Сборник с фейлетони</td>
      <%@ include file="actions.html" %>
    </tr>
    <tr>
      <th scope="row">9810648</th>
      <td>Island of the Blue Dolphins</td>
      <td>Scott O'Dell</td>
      <td>Фантастика</td>
      <%@ include file="actions.html" %>
    </tr>
  </tbody>
  </table>
  <div class="panel-footer">Последно актуализиран: <script>document.write(Date().slice(0,25))</script> </div>
</div>
		</div>
<%@include  file="end.jsp" %>