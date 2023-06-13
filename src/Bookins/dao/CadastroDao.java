package Bookins.dao;

import java.sql.SQLException;

import Bookins.model.LoginCadastro;
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
}
