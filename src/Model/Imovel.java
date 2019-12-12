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
	String tipo;
	int dataInicial;
	int dataFinal;
	
	// Construtor
	public Imovel(int id, float preco, String endereco, String status, String descricao, String foto, String tipo, int dataInicial, int dataFinal)
	{
		this.id = id;
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
		this.dataInicial = dataInicial;
		this.dataFinal = dataFinal;
	}
	
	public Imovel(float preco, String endereco, String status, String descricao, String foto, String tipo, int dataInicial, int dataFinal)
	{
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
		this.dataInicial = dataInicial;
		this.dataFinal = dataFinal;
	}
	
	public Imovel(int id, float preco, String endereco, String status, String tipo, int dataInicial, int dataFinal)
	{
		this.id = id;
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.tipo = tipo;
		this.dataInicial = dataInicial;
		this.dataFinal = dataFinal;
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
	
	public String getTipo()
	{
		return tipo;
	}
	
	public int getDataInicial()
	{
		return dataInicial;
	}
	
	public int getDataFinal()
	{
		return dataFinal;
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
	
	public void setTipo(String tipo)
	{
		this.tipo = tipo;
	}
	
	public void setDataInicial(int dataInicial)
	{
		this.dataInicial = dataInicial;
	}
	
	public void setDataFinal(int dataFinal)
	{
		this.dataFinal = dataFinal;
	}
}