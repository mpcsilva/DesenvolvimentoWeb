package bean;

/*
 * Classe Que Prov� o Modelo de Objeto
 */
public class BeanUsuario {

	private Long id;
	private String login;
	private String senha;
	private String nome;
	private String telefone;
	private String cep;
	private String rua;
	private String bairro;
	private String cidade;
	private String estado;
	private String ibge;
	private String fotobase64;
	private String fotoBase64Miniatura;
	private String curriculoBase64;
	private String contentType;
	private String contentTypeCurriculo;
	private String tempFotoUser;
	private boolean ativo;
	private String sexo;
	private String perfil;

	private boolean atualizarImage = true;
	private boolean atualizarPdf = true;

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public String getPerfil() {
		return perfil;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getSexo() {
		return sexo;
	}

	public boolean isAtualizarImage() {
		return atualizarImage;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public void setAtualizarImage(boolean atualizarImage) {
		this.atualizarImage = atualizarImage;
	}

	public boolean isAtualizarPdf() {
		return atualizarPdf;
	}

	public void setAtualizarPdf(boolean atualizarPdf) {
		this.atualizarPdf = atualizarPdf;
	}

	public void setFotoBase64Miniatura(String fotoBase64Miniatura) {
		this.fotoBase64Miniatura = fotoBase64Miniatura;
	}

	public String getFotoBase64Miniatura() {
		return fotoBase64Miniatura;
	}

	public String getTempFotoUser() {

		tempFotoUser = "data:" + contentType + ";base64," + fotobase64;

		return tempFotoUser;
	}

	public void setContentTypeCurriculo(String contentTypeCurriculo) {
		this.contentTypeCurriculo = contentTypeCurriculo;
	}

	public void setCurriculoBase64(String curriculoBase64) {
		this.curriculoBase64 = curriculoBase64;
	}

	public String getCurriculoBase64() {
		return curriculoBase64;
	}

	public String getContentTypeCurriculo() {
		return contentTypeCurriculo;
	}

	public void setFotobase64(String fotoBase64) {
		this.fotobase64 = fotoBase64;
	}

	public String getFotoBase64() {
		return fotobase64;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getContentType() {
		return contentType;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return this.senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getIbge() {
		return ibge;
	}

	public void setIbge(String ibge) {
		this.ibge = ibge;
	}
}