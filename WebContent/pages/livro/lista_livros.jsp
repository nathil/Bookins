<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bookins.dao.SelectDao"%>
<%@page import="Bookins.model.Livro"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<%
	SelectDao livro = new SelectDao();
	livro.listarLivros();
	
	Livro l = new Livro();
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
	ArrayList<Livro> resultados = new ArrayList<Livro>();
	Livro obj = null;
	SelectDao dao = new SelectDao();
	//ResultSet res = dao.listarLivros();
%>
</body>
</html>