<%@page import="Bookins.dao.SelectDao"%>
<%@page import="Bookins.model.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<%
	SelectDao livro = new SelectDao();
	livro.listarLivros();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Livros</h1>
<%
	livro.listarLivros();
%>
</body>
</html>