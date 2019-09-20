package br.com.apitwitter.Itau.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.apitwitter.Itau.Model.Tweet;
import br.com.apitwitter.Itau.Repository.TweetRepository;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;

@Component
public class TwitterServices {

	@Autowired
	TweetRepository tweetRepository;

	@Autowired
	EnvironmentProperties environmentProperties;

	public boolean findTweetByHashtag(String hashtag) {
		
		int numTweetsCapturados = 0;

		// Autenticando no Twitter
		AccessToken accessToken = new AccessToken(environmentProperties.getAcessToken(),
				environmentProperties.getAcessTokenSecret());
		String consumerKey = environmentProperties.getConsumerKey();
		String consumerSecret = environmentProperties.getConsumerKeySecret();

		// Abrindo Conexão + Adicionando credenciais
		Twitter twitter = new TwitterFactory().getInstance();
		twitter.setOAuthConsumer(consumerKey, consumerSecret);
		twitter.setOAuthAccessToken(accessToken);

		try {

			//Limpar Tabela
			tweetRepository.deleteAll();
			
			// Executando Query no twitter
			Query query = new Query(hashtag);
			query.setCount(100);
			QueryResult result;

			// Listando a resposta
			do {
				result = twitter.search(query);
				List<Status> tweets = result.getTweets();
				for (Status tweet : tweets) {
					
					Tweet tw = new Tweet();
					tw.setHashtag(hashtag.replace("%23", "#"));
					tw.setIdioma(tweet.getLang());
					tw.setPais(tweet.getUser().getLocation());
					tw.setSeguidores(tweet.getUser().getFollowersCount());
					tw.setUsuario(tweet.getUser().getScreenName());
					tw.setDtpostagem(tweet.getCreatedAt());
					tw.setMensagem(tweet.getText());
					tweetRepository.save(tw);
					numTweetsCapturados++;

				}
				
				if(numTweetsCapturados >= 100) {
					break;
				}
				
			} while ((query = result.nextQuery()) != null);

			return true;

		} catch (TwitterException te) {

			te.printStackTrace();
			System.out.println("Failed to search tweets: " + te.getMessage());
			return false;

		}
	}
}
