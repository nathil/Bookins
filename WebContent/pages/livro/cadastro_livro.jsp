<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="POST">
		Titulo <input type="text" name="titulo"><br>
		Descriçao <textarea rows="5" cols="33" name="descricao"></textarea><br>
		Preço <input type="number" name="preco"><br>
		<select name="categoria">
			<option value="" selected>Selecione uma categoria</option>
		</select><br>
		<input type="submit" value="Adicionar">
	</form>
</body>
</html>