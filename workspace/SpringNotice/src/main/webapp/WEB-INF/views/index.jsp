<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- header.jsp --%>
<jsp:include page="template/header.jsp">
	<jsp:param value="Home" name="title" />
</jsp:include>

<script type="text/javascript">
	if('${param.signUpResult}' > 0){
		alert('회원이 되신것을 환영합니다. 로그인 페이지로 이동합니다.');
		location.href = 'loginPage.do';
	}
</script>

<div class="jumbotron">
	<h1 class="display-3">Jumbotron heading</h1>
	<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas
		eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris
		condimentum nibh, ut fermentum massa justo sit amet risus.</p>
	<p>
		<a class="btn btn-lg btn-success" href="#" role="button">Sign up
			today</a>
	</p>
</div>

<div class="row marketing">
	<div class="col-lg-6">
		<h4>Subheading</h4>
		<p>Donec id elit non mi porta gravida at eget metus. Maecenas
			faucibus mollis interdum.</p>

		<h4>Subheading</h4>
		<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
			Cras mattis consectetur purus sit amet fermentum.</p>

		<h4>Subheading</h4>
		<p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
	</div>

	<div class="col-lg-6">
		<h4>Subheading</h4>
		<p>Donec id elit non mi porta gravida at eget metus. Maecenas
			faucibus mollis interdum.</p>

		<h4>Subheading</h4>
		<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
			Cras mattis consectetur purus sit amet fermentum.</p>

		<h4>Subheading</h4>
		<p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
	</div>
</div>



<%-- footer.jsp --%>
<%@ include file="template/footer.jsp"%>