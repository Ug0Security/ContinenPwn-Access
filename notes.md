shodan : http.favicon.hash:-1427156024 "Continental Access" 

edit :  le meme concept est exploitable sur d'autre produit/marque ex :

http.favicon.hash:-1001714754 (Speco Technologies)

http.favicon.hash:-2070898523 (Sicunet Neptune)

http.favicon.hash:724459871 (Envera Systems)

http.favicon.hash:577600341 (TECH Electronics)

http.favicon.hash:-1950334915 (Troy Access)

http.favicon.hash:1140167191 (NAPCO Security Technologies)

http.favicon.hash:-1849238860 (Carolina Time)

pour un total de 180+ hosts exposés 

(pour les trouver : html:"jwUploader 기본 설정" -title:"Linear eMerge" -title:"Bay Alarm")


encore un truc claqué au sol

![bTQcu0](https://github.com/Ug0Security/ContinenPwn-Access/assets/28728543/8e1ed0a4-0ee4-4d1a-b9d1-f1af77a7a6ff)

query.php qui permet de faire direct des requetes dans les bases SQLite 

Dans lequels les hashes des users sont en sha256 pas salé donc ça se trouve relativement bien a la rainbow table,on peut aussi ajouter des users/admins

et il y a des injections de commandes blind post auth dans des fonctions évidentes (test FTP duuuuuuh.......)

Pti scripts tout aussi éclaté pour pwn le tout, fleme de faire la full chaine mais ça se fait :

-création admin via query.php

-login avec le nouvel admin pour valider un cookie (ya une session fixation donc meme pas beosin de s'emmerder avec la recupération)

-exec via l'injection de commande


