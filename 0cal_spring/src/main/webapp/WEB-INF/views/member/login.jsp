<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="<c:url value="/resources/CSS/login.css" />">
<script src="https://kit.fontawesome.com/43fd0ad460.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="../resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript" src="../resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<form name="login" method="post" action="login.do">
		<div class="wrapper">
			<div class="login">
				<b>로그인</b>
			</div>

			<div class="middle_login">
				<input type="text" id="inputId" name="id" class="loginid"
					placeholder="아이디를 입력해주세요." />
			</div>

			<div class="middle_login">
				<input type="password" id="inputPw" name="user_pass" class="loginpw"
					placeholder="비밀번호를 입력해주세요." />
			</div>

			<div class=loginbtn>
				<button type="submit" class="loginsuc" onclick="submit()">
					<span class="logintext">로그인</span>
				</button>
			</div>

			<div class=signupbtn>
				<button type="button" class="signuplink">
					<a href="${pageContext.request.contextPath}/member/signup.do">
						<span class="signuptext">회원가입</span>
					</a>
				</button>
			</div>
		</div>


	</form>
</body>
</html>
