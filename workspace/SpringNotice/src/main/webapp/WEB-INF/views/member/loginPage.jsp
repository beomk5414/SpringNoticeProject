<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- header.jsp --%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="SignUp" name="title" />
</jsp:include>

<div class="container">
	<form class="form-signin" method="post" action="login.do">
		<h2 class="form-signin-heading">로그인</h2>
		<label for="id" class="sr-only">Email address</label>
		<input type="email" name="id" id="id" class="form-control" placeholder="ID" required="" autofocus=""> 
		<label for="pw" class="sr-only">Password</label> 
		<input type="password" name="pw" id="pw" class="form-control" placeholder="Password" required=""><br/>
		<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
	</form>
</div>

<%-- footer.jsp --%>
<%@ include file="../template/footer.jsp"%>