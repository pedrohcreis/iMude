package Model;

public class Comprador
{
	// Atributos
	String id;
	String nome;
	String email;
	String CPF;
	String password;

	// Construtor
	public Comprador(String id, String nome, String email, String CPF, String password)
	{
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.CPF = CPF;
		this.password = password;
	}
	
	public Comprador(String nome, String email, String CPF, String password)
	{
		this.nome = nome;
		this.email = email;
		this.CPF = CPF;
		this.password = password;
	}

	// Getters
	public String getId()
	{
		return id;
	}
	
	public String getPassword()
	{
		return password;
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