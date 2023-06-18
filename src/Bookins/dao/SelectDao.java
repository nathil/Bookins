package Bookins.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

//Conexao
import Bookins.util.Conexao;

public class SelectDao {
	public ResultSet listarLivros() {
		
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeQuery("SELECT * FROM livro");
		}catch(SQLException e){
			System.out.print(e);
		}
		return null;
	}
}
