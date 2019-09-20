package br.com.apitwitter.Itau.Controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.apitwitter.Itau.Model.Tweet;
import br.com.apitwitter.Itau.Repository.TweetRepository;
import twitter4j.JSONArray;
import twitter4j.JSONObject;

@RestController
public class ApiController {
	
	@Autowired
	TweetRepository tweetRepository;

	
	@ResponseBody
	@RequestMapping(value = "/", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> homeApication() {
		return new ResponseEntity<Object>("{app:\"online\"}", HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping(value = "/userTopFollowers", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> userTopFollowers() {
		
		HttpStatus status = HttpStatus.OK;
		JSONObject result = new JSONObject();
		
		try {
			
			JSONArray jArray = new JSONArray();
			
			List<Tweet> top5 = tweetRepository.findAllUsersTopFollowers();
			for (Tweet tweet : top5) {
				jArray.put(tweet.getJsonObject());
			}
			
			result.put("resultado", jArray);
			
		} catch (Exception e) {
			status = HttpStatus.BAD_REQUEST;
		}
		
		return new ResponseEntity<Object>(result.toString(), status);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/postByTimeAndDay", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> postByTimeAndDay() {
		
		HttpStatus status = HttpStatus.OK;
		JSONObject result = new JSONObject();
		
		try {
			
			JSONArray jArray = new JSONArray();
			String id = "";
			
			Map<String, Integer> tweetOption = new HashMap<String, Integer>();
							
			DateFormat dateFormat = new SimpleDateFormat("HH");
			
			List<Tweet> allTweets = tweetRepository.findAll();
			for (Tweet tweet : allTweets) {
				
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(tweet.getDtpostagem());
				
				String year = String.valueOf(calendar.get(Calendar.YEAR));
				String month = calendar.get(Calendar.MONTH) <= 9 ? "0"+String.valueOf(calendar.get(Calendar.MONTH)) : String.valueOf(calendar.get(Calendar.MONTH));
				String day = String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));
				
			    String timeHours = dateFormat.format(calendar.getTime());
			    id = year + month + day + timeHours;
			    
			    if(tweetOption.containsKey(id)) {
			    	tweetOption.put(id, tweetOption.get(id) + 1);
			    } else {
			    	tweetOption.put(id, 1);
			    }

			}
			
			DateFormat dateFormatCompleto = new SimpleDateFormat("yyyyMMddHH");
			DateFormat dateFormatCompletoFinal = new SimpleDateFormat("dd/MM/yyyy HH");
			
			for (Map.Entry<String, Integer> entry : tweetOption.entrySet()) {
				
				Date dataPost = dateFormatCompleto.parse(entry.getKey());
				
				Tweet tw = new Tweet();
			    tw.setDatePost(dateFormatCompletoFinal.format(dataPost)+"h");
			    tw.setQtdePost(entry.getValue());
			    jArray.put(tw.getTotalPostagemHoraDia());
			}
			
			result.put("resultado", jArray);
			
		} catch (Exception e) {
			status = HttpStatus.BAD_REQUEST;
		}
		
		return new ResponseEntity<Object>(result.toString(), status);
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/postByTagAndLanguageAndCountyAndUser", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> postByTagAndLanguageAndCountyAndUser() {
		
		HttpStatus status = HttpStatus.OK;
		JSONObject result = new JSONObject();
		
		try {
			
			JSONArray jArray = new JSONArray();
		
			List<Object[]> allTweets = tweetRepository.findAllByLanguageAndCountryPerUser();
			for (Object[] tweet : allTweets) {
				Tweet tw2 = new Tweet();
				tw2.setUsuario(tweet[0].toString());
				tw2.setIdioma(tweet[1].toString());
				tw2.setPais(tweet[2].toString());
				tw2.setQtdePost(Integer.parseInt(tweet[3].toString()));
				jArray.put(tw2.getAllTweetsGroupedLanguage());
			}
			
			result.put("resultado", jArray);
			
		} catch (Exception e) {
			status = HttpStatus.BAD_REQUEST;
		}
		
		return new ResponseEntity<Object>(result.toString(), status);
		
	}
	
}