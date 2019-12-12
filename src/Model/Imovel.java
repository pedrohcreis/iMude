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
	int data_inicial;
	int data_final;
	
	// Construtor
	public Imovel(int id, float preco, String endereco, String status, String descricao, String foto, String tipo, int data_inicial, int data_final)
	{
		this.id = id;
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
		this.data_inicial = data_inicial;
		this.data_final = data_final;
	}
	
	public Imovel(float preco, String endereco, String status, String descricao, String foto, String tipo, int data_inicial, int data_final)
	{
		this.preco = preco;
		this.endereco = endereco;
		this.status = status;
		this.descricao = descricao;
		this.foto = foto;
		this.tipo = tipo;
		this.data_inicial = data_inicial;
		this.data_final = data_final;
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
	
	public int getData_Inicial()
	{
		return data_inicial;
	}
	
	public int getData_Final()
	{
		return data_final;
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
	
	public void setData_Inicial(int data_inicial)
	{
		this.data_inicial = data_inicial;
	}
	
	public void setData_Final(int data_final)
	{
		this.data_final = data_final;
	}
}