package Bookins.dao;

import java.sql.SQLException;

import Bookins.model.Livro;
import Bookins.model.LoginCadastro;
//Conexao
import Bookins.util.Conexao;

public class CadastroDao {

	public boolean inserirUsuario(LoginCadastro c) {
		
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO usuario(email, usuario, senha) VALUES ("
					+ "'" + c.getEmail() + "','"
					+ c.getUsuario() + "','"
					+ c.getSenha() +"');");
			return true;
		}catch(SQLException e){
			return false;
		}
	}
	
	public boolean inserirLivro(Livro l) {
		
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO livro(nomeLivro, descricao_livro, preco_livro) VALUES("
					+ "'" + l.getTitulo() + "','"
					+ l.getDescricao() + "','"
					+ l.getPreco() +"');");
			return true;
		}catch(SQLException e){
			return false;
		}
	}
}
