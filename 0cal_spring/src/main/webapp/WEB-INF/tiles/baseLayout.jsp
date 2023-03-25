<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>0칼로리 :: 디저트는 빵칼로리</title>

<!-- 파비콘 -->
<link rel="shortcut icon" href="/resources/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="/resources/img/favicon.ico" type="image/x-icon">

</head>
<body>
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>

	<div class="container">
		<div class="row">
			<tiles:insertAttribute name="content" />
		</div>
	</div>

	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>