<%@page import="Bookins.dao.CadastroDao"%>
<%@page import="Bookins.model.LoginCadastro"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

boolean ok = false;

LoginCadastro cadastro = new LoginCadastro();
cadastro.setEmail(request.getParameter("email"));
cadastro.setUsuario(request.getParameter("usuario"));
cadastro.setSenha(request.getParameter("senha"));

CadastroDao cadastroDao = new CadastroDao();
ok = cadastroDao.inserirUsuario(cadastro);

if(ok){
%>
<script type="text/javascript">
	alert("Usuário cadastrado com sucesso!");
	window.location.href="./login.html";
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Usuário Já existente");
	window.location.href="../index.html";
</script>
<%} %>
