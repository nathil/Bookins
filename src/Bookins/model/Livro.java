package Bookins.model;

public class Livro {
	private int id;
	private String titulo;
	private String descricao;
	private double preco;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	public String getColumnByIndex(int columnIndex) {
	    // Implemente o código para retornar o valor da coluna com base no índice
	    // Exemplo hipotético:
	    if (columnIndex == 1) {
	        return String.valueOf(this.id);
	    } else if (columnIndex == 2) {
	        return this.titulo;
	    } else {
	        // Lide com outros índices de coluna, se necessário
	        return null;
	    }
	}

}
