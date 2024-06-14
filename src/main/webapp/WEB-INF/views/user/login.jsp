<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="breadcrumbRow" class="row">
	<h2>Login</h2>
	<div class="row pageTitle m0">
		<div class="container">
			<h4 class="fleft">Login</h4>
			<ul class="breadcrumb">
				<li><a href="${contextPath }/home">home</a></li>
				<li class="active">Login</li>
			</ul>
		</div>
	</div>
</section>
<section class="row contentRowPad">
	<div class="container">
		<h4 class="title-group">Đăng nhập</h4>
		<p style="color: red;">${msg}</p>
		<form action="${contextPath}/dang-nhap" method="post">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Tên đăng nhập"
					name="username">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="Mật khẩu"
					name="password">
			</div>
			<button type="submit" class="btn btn-primary">Đăng nhập</button>
		</form>
	</div>
</section>
