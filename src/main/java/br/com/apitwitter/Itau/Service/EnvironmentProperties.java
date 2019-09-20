package br.com.apitwitter.Itau.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
public class EnvironmentProperties {

	@Autowired
	private Environment env;
	
	public String getAcessToken() {
		return env.getProperty("twitter.accesstoken");
		
	}
	public String getAcessTokenSecret() {
		return env.getProperty("twitter.accesstokensecret");
		
	}
	
	public String getConsumerKey() {
		return env.getProperty("twitter.consumerkey");
		
	}
	
	public String getConsumerKeySecret() {
		return env.getProperty("twitter.consumersecret");
		
	}	
	
}
