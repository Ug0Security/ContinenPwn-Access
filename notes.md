shodan : http.favicon.hash:-1427156024
"Continental Access" 

encore un truc claqué au sol

![bTQcu0](https://github.com/Ug0Security/ContinenPwn-Access/assets/28728543/8e1ed0a4-0ee4-4d1a-b9d1-f1af77a7a6ff)

query.php qui permet de faire direct des requetes dans les bases SQLite 

Dans lequels les hashes des users sont en sha256 pas salé donc ça se trouve relativement bien a la rainbow table,on peut aussi ajouter des users/admins

et il y a des injections de commandes blind post auth dans des fonctions évidentes (test FTP duuuuuuh.......)

Pti scripts tout aussi éclaté pour pwn le tout, fleme de faire la full chaine mais ça se fait :

-création admin via query.php

-login avec le nouvel admin pour valider un cookie (ya une session fixation donc meme pas beosin de s'emmerder avec la recupération)

-exec via l'injection de commande


