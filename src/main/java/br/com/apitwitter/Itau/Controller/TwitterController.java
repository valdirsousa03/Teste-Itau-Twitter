package br.com.apitwitter.Itau.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.apitwitter.Itau.Repository.TweetRepository;
import br.com.apitwitter.Itau.Service.TwitterServices;
import twitter4j.JSONObject;

@RestController
public class TwitterController {

	@Autowired
	TwitterServices twitterServices;

	@Autowired
	TweetRepository tweetRepository;

	@ResponseBody
	@RequestMapping()
	public ResponseEntity<Object> searchTweet() {

		HttpStatus status = HttpStatus.OK;

		List<String> hashtags = new ArrayList<>();
		hashtags.add("%23openbanking");
		hashtags.add("%23apifirst");
		hashtags.add("%23devops");
		hashtags.add("%23cloudfirst");
		hashtags.add("%23microservices");
		hashtags.add("%23apigateway");
		hashtags.add("%23oauth");
		hashtags.add("%23swagger");
		hashtags.add("%23raml");
		hashtags.add("%23openapis");

		for (String tag : hashtags) {
			boolean isOk = twitterServices.findTweetByHashtag(tag);
			if (!isOk) {
				status = HttpStatus.BAD_REQUEST;
			}
		}

		JSONObject result = new JSONObject();
		result.put("list", hashtags);

		return new ResponseEntity<Object>(result.toString(), status);

	}
}
