## Requêtes

Les titres et dates de sorties des films du plus récent au plus ancien

```
SELECT Title, release_date FROM movies ORDER BY release_date DESC
```

Tout les Films Acteur
```
SELECT Title FROM movies INNER JOIN movies_actors ON movies.id = movies_actors.id_movies INNER JOIN actors ON actors.id = movies_actors.id_actors WHERE actors.last_name=''
```

Tout les Acteurs Film
```
SELECT first_name, last_name FROM actors INNER JOIN movies_actors ON actors.id = movies_actors.id_actors INNER JOIN movies ON movies.id = movies_actors.id_movies WHERE movies.title=''
```

Les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique
```
SELECT last_name, first_name, (YEAR(NOW())) - YEAR (birthday) AS AGE FROM actors WHERE YEAR (birthday) < 1992 ORDER by last_name, first_name
```

Une requête pour ajouter un film
```
INSERT INTO `movies`(`id`, `Title`, `release_date`, `length`, `director`, `creation_date`, `change_date`) VALUES (NULL,"Titre","YYYY/MM/DD","00:00","Nom",DEFAULT,DEFAULT)
```

Une requête pour ajouter un acteur
```
INSERT INTO actors(id, last_name, first_name, birthday, creation_date, change_date) VALUES (NULL,"nom","prénom","YYYY/MM/DD",DEFAULT,DEFAULT)
```

Une requête pour modifier un film
```
UPDATE `movies` SET `Title`="",`release_date`="",`length`="",`director`="",`change_date`=DEFAULT WHERE id =""
```

Une requête pour supprimer un acteur
```
DELETE FROM `actors` WHERE id =""
```

une requête pour afficher les 3 derniers acteurs ajoutés
```
SELECT * FROM ( SELECT * FROM actors ORDER BY creation_date DESC LIMIT 3 ) as r ORDER BY creation_date DESC
```

Olivier BOYER
Tous fonctionnes
supprimer les etiquettes inutiles
