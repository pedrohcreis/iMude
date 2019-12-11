package Model;

public class Imovel
{
	// Atributos
	int id;
	float preco;
	String endereco;
	String status;
	String descricao;
	String foto;
	int tipo;
	
	// Construtor
	public Imovel(int id, float preco, String endereco, String status, String descricao, String foto, int tipo)
	{
		this.id = id;
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
	}
	
	public Imovel(float preco, String endereco, String status, String descricao, String foto, int tipo)
	{
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
	}

	// Getters
	public int getId()
	{
		return id;
	}

	public float getPreco()
	{
		return preco;
	}

	public String getEndereco()
	{
		return endereco;
	}

	public String getStatus()
	{
		return status;
	}

	public String getDescricao()
	{
		return descricao;
	}

	public String getFoto()
	{
		return foto;
	}
	
	public int getTipo()
	{
		return tipo;
	}

	// Setters
	public void setId(int id)
	{
		this.id = id;
	}

	public void setPreco(float preco)
	{
		this.preco = preco;
	}

	public void setEndereco(String endereco)
	{
		this.endereco = endereco;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public void setDescricao(String descricao)
	{
		this.descricao = descricao;
	}

	public void setFoto(String foto)
	{
		this.foto = foto;
	}
	
	public void setTipo(int tipo)
	{
		this.tipo = tipo;
	}
}