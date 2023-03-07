<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>index</title>
    <link rel="stylesheet" href="common/common.css" />
  </head>
  <body>
    <header>
      <jsp:include page="common/header.jsp" />
    </header>
    <main>
      <h1>index.jsp 파일입니다.</h1>
      <a href="sub.jsp">sub.jsp이동</a>
    </main>
    <footer>
      <jsp:include page="common/footer.jsp" />
    </footer>
  </body>
</html>
