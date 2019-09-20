package br.com.apitwitter.Itau.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import br.com.apitwitter.Itau.Model.Tweet;

@Repository
public interface TweetRepository extends PagingAndSortingRepository<Tweet,Long> {
	
	@Query(value = "SELECT tweets.* FROM tweets ORDER BY seguidores DESC LIMIT 5", nativeQuery = true)
	public List<Tweet> findAllUsersTopFollowers();
	
	@Query(value = "SELECT tweets.usuario, tweets.idioma, tweets.pais, COUNT(1) AS qtdePost FROM tweets GROUP BY tweets.usuario, tweets.idioma, tweets.pais ORDER BY qtdePost DESC", nativeQuery = true)
    public List<Object[]> findAllByLanguageAndCountryPerUser();
	
	public List<Tweet> findAll();
}
