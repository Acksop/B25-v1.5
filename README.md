# B25-V1.5 build with MVC---Procedural

Cette coquille-template complete est le fruit d'un travail qui n'est plus disponible sur les toiles du réseau, il est le fruit d'un travail d'archarné pendant près de 5ans avec toutes les casquettes possibles et imaginables lorsque l'on créé un site informatique. Réellement personne ne m'as aidé sur le long terme.

Il est installable sur un poste en local afin de comprendre comment le B25 a été codé mais n'est plus maintenu, veuiller choisir la vN si vous voulez participer au projet...

Les fichiers SQL des bases de données utilisées sont dans le dossier `/version1` ce sont les fichiers `dump*`... Vous remarquerez peut être que le B25 utilise 3 base de données, une pour les maps googles (http://bradwedell.com/php-google-maps-api/), une autre pour les statistiques crawltrack (projet qui est maintenant abandonné -- http://www.crawltrack.fr/).

Afin de réaliser la connexion avec le programme il faut modifier les fichers contenant les identifiants dans le dossier `/version1`, ce sont les fichiers `identifiants*`.

Le dossier `/radieurae` doit être lui aussi disponible sur un virtual host ainsi que le dossier `/version1/public/` .

Le dossier `/radieurae` contient les upload-utilisateurs et le dossier `/version1/public` contient lui la version 1.5 plate-forme mère originale.

Enfin il vous faudra donner les adresse de la radieurae dans le fichier `/version1/localisation_Domaines_externes_B25.php`, si vous ne changer pas le chemin du dossier `/radieurae`vous n'aurez pas besoin de modifier la constante SVNRADIEURAE_DIR.

Enfin il vous faudra dans ce même fichier (`/version1/localisation_Domaines_externes_B25.php` ) donner le FQDN local du virtualhost de la plate-forme mère que vous avez précédemlment créé. Je vous conseille vivement des FQDN du type `v1.besancon25.local` et `radieaurae.besancon25.local` . Les `.dev` étant dépréciés depuis 2016.

Ce projet est disponible gratuitement pour celui qui souhaitera tenter l'expérience de programmation de groupe autour du B25.

Afin de travailler sur la vN il vous suffit de copier le dossier `version1/public` à la place du précédent. C'est un peu hasardeux mais c'est comme çà. Pour les plus courageux vous pouvez cloner le dépot du vN a coté de  /version1 et ajouter les fichiers identifiants manquants, ce sont quasiment les même. Et s'il y a une erreur, je suis disposé à la corriger.

Envoyer moi un courriel.

Je mettrais peut être un jour la version 3.0c en ligne pour les demandeurs mais ce n'est pas encore d'actualité.

Mes sincères salutations aux autres qui voudront bien s'y intéresser....
