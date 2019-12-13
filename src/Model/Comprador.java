package Model;

public class Comprador
{
	// Atributos
	String id;
	String nome;
	String email;
	String CPF;
	String senha;

	// Construtor
	public Comprador(String id, String nome, String email, String CPF, String senha)
	{
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.CPF = CPF;
		this.senha = senha;
	}
	
	public Comprador(String nome, String email, String CPF, String senha)
	{
		this.nome = nome;
		this.email = email;
		this.CPF = CPF;
		this.senha = senha;
	}

	// Getters
	public String getId()
	{
		return id;
	}
	
	public String getSenha()
	{
		return senha;
	}

	public String getNome()
	{
		return nome;
	}

	public String getEmail()
	{
		return email;
	}

	public String getCPF()
	{
		return CPF;
	}

	// Setters
	public void setId(String id)
	{
		this.id = id;
	}

	public void setNome(String nome)
	{
		this.nome = nome;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public void setCPF(String CPF)
	{
		this.CPF = CPF;
	}

	public String getData() {
		// TODO Auto-generated method stub
		return null;
	}
}