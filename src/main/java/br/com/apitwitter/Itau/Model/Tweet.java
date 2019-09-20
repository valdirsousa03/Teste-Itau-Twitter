package br.com.apitwitter.Itau.Model;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import twitter4j.JSONObject;

@Entity
@Table(name = "tweets")
public class Tweet {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String hashtag;

    private String mensagem;
    
    private String usuario;

    private String idioma;
    
    private String pais;
    
    private int seguidores;
    
    private Date dtpostagem;
    
    @Transient
    private int qtdePost;
    
    @Transient
    private String datePost;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	
	public int getSeguidores() {
		return seguidores;
	}

	public void setSeguidores(int seguidores) {
		this.seguidores = seguidores;
	}

	public Date getDtpostagem() {
		return dtpostagem;
	}

	public void setDtpostagem(Date dtpostagem) {
		this.dtpostagem = dtpostagem;
	}
	
	
	public int getQtdePost() {
		return qtdePost;
	}

	public void setQtdePost(int qtdePost) {
		this.qtdePost = qtdePost;
	}

	public String getDatePost() {
		return datePost;
	}

	public void setDatePost(String datePost) {
		this.datePost = datePost;
	}
	
	public JSONObject getTotalPostagemHoraDia() {
		JSONObject result = new JSONObject();
		result.put("data_hora", this.datePost);
		result.put("qtde_post", this.qtdePost);
		return result;
	}
	
	public JSONObject getAllTweetsGroupedLanguage() {
		JSONObject result = new JSONObject();
		result.put("hashtag", this.hashtag);
		result.put("usuario", this.usuario);
		result.put("idioma", this.idioma);
		result.put("pais", this.pais);
		result.put("qtde_post", this.qtdePost);
		return result;
	}

	public JSONObject getJsonObject() {
		JSONObject result = new JSONObject();
		result.put("hashtag", this.hashtag);
		result.put("usuario", this.usuario);
		result.put("idioma", this.idioma);
		result.put("pais", this.pais);
		result.put("seguidores", this.seguidores);
		result.put("dtpostagem", this.dtpostagem);
		result.put("mensagem", this.mensagem);
		return result;
	} 
	
	@Override
	public String toString() {
		JSONObject result = new JSONObject();
		result.put("hashtag", this.hashtag);
		result.put("usuario", this.usuario);
		result.put("idioma", this.idioma);
		result.put("pais", this.pais);
		result.put("seguidores", this.seguidores);
		result.put("dtpostagem", this.dtpostagem);
		result.put("mensagem", this.mensagem);
		return result.toString();
	}   
}