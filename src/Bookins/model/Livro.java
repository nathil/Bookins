package Bookins.model;

public class Livro {
	private int id;
	private String titulo;
	private String descricao;
	private int quantidade;
	private double preco;
	private double total;
	
	public Livro(int id, String titulo, String descricao, int quantidade, double preco, double total) {
		this.id = id;
		this.titulo = titulo;
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.preco = preco;
		this.total = total;
	}

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

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
	
}
