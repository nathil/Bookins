<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuário</title>
</head>
<body>
	<%=request.getParameter("email") %>
	<%=request.getParameter("usuario") %>
	<%=request.getParameter("senha") %>
</body>
</html>