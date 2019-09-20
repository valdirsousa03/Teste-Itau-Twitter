# Teste-Itau-Twitter

Teste do Itau consumindo api do Twitter

Esse projeto foi desenvolvido com objetivo de realizar o teste do Itau para Engenheiro de Software Jr.

Foi realizado a conexão com Api do Twitter utilizando o package Twitter4j, onde eu passo os seguintes parametros para autentificação:
- Access Token
- Access Token Secret
- Consumer Key
- Consumer Secret.

O banco de dados escolhido para armazenamento de dados e conexão com a aplicação foi o MariaDB.

Para consultar os 5 usuários da amostra coletada que possuem mais seguidores, basta realizar um Get com a aplicação em execução na seguinte rota:
http://localhost:8080/userTopFollowers

Para consultar o total de postagens agrupadas por hora em um determinado dia para uma hashtag, realizar um GET com a aplicação em execução na rota abaixo:
http://localhost:8080/postByTimeAndDay

Para consultar o total de postagens de uma tag por idioma/pais do usuário que postou, basta consultar a rota abaixo com a aplicação em execução.
http://localhost:8080/postByTagAndLanguageAndCountyAndUser

Referencias utilizadas:

http://twitter4j.org/en/

