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
	<table border="1px solid black" style="border-collapse:collapse;">
		<thead>
			<th>Id</th>
			<th>Titulo</th>
			<th>Descricao</th>
			<th>Preço</th>
		</thead>
		<%
		ArrayList<Livro> resultados = new ArrayList<Livro>(); 
		Livro obj = null;
		SelectDAO dao = new SelectDAO();
		ResultSet res = dao.listarLivros();
		while(res.next()){
			obj = new Livro();
			obj.setId(Integer.parseInt(res.getString(1)));
			obj.setTitulo(res.getString(2));
			obj.setDescricao(res.getString(3));
			obj.setPreco(res.getString(4));
			resultados.add(obj);
		}
		for (Livro resultado : resultados){%>
			<tr>
				<% for (int i = 1; i<9;i++) {%>
					<td><%= obj.getColumnByIndex(i) %></td>
				<%}%>
				<td><a href="changeProj.jsp?id_projeto=<%=resultado.getId()%>">Alterar</a></td>
				<td><a href="deleteProj.jsp?id_projeto=<%=resultado.getId()%>">Apagar</a></td>
			</tr>
		<%}%>
	</table>
</body>
</html>