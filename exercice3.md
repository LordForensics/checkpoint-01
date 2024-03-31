# Exercice 3 - Quiz (temps estimé : 30 min)


Répond aux questions suivantes:

## 1) Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux

La ligne de commande qui permet de lister les utilisateurs d'un système Linux est `cat /etc/passwd`, cette commande affichera toutes les caractéristiques des utilisateurs (UID, GID, etc...).

## 2) Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
Si l'on découpe les droits, on souhaite obtenir
* rwx pour l'utilisateur
* r-- pour le groupe
* r-- pour les autres

On peut utiliser la commande `chmod u=rwx g=r o=r myfile` pour appliquer directement les droits en fonction de ce que l'on souhaite avoir

Ou bien, on calcule les droits avec les valeurs numériques

r = 4 | w = 2 | x = 1 , ce qui nous donne rwx = 4 + 2 + 1 = 7 | r = 4 | r = 4

Ainsi, on peut utiliser la commande `chmod 744 myfile`

Les deux solutions sont équivalentes.


## 3) Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?

Pour ignorer un fichier dans un dépôt local
1) Nous devons créer dans ce dépôt un fichier `.gitignore`
2) Nous devons alors modifier le fichier et y ajouter la ligne de texte `*.pdf`, cette ligne permettra d'ignorer tous les fichiers .pdf grâce à la wildcard `*`, puis enregistrer les modifications, un commentaire peut être ajouter pour expliquer le motif de l'exclusion des fichiers
3) Nous devons ensuite mettre les fichiers en _Staging_ avec `git add .`
4) Nous placerons après les fichiers en _Commit_ avec `git commit -m "Add .gitignore file"`
5) Nous pouvons procéder au _Push_ sans risque avec ` git push origin main`

## 4) Quelles commandes git utiliser pour fusionner les branches main et test_valide ?

Afin de fusionner deux branches d'un même _repository_ (repo), nous devons effectuer les commandes :
* `git checkout main` pour se placer dans la branche `main`
* `git merge test_valide` pour fusionner les 2 branches
* `git branch -d test_valide` pour supprimer la branche `test_valide` 

Cette méthode s'applique dans le cas où aucun conflit n'est détecté, dans le cas contraire, il faudra gérer le conflit.

## 5) Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :
```
Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :
- "Bonjour est-ce que ce clavier fonctionne bien ?"
- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
- "Même des tildes ~ ?"
- "Evidemment !"

```

Il faudra ajouter un backslash devant certains symboles pour que ceux ci soit pris en compte au format texte, ce qui nous donne :

```
#!/bin/bash

echo "Malgré le prix élevé de 100$, il a dit \"Bonjour !\" au vendeur :"
echo "- \"Bonjour est-ce que ce clavier fonctionne bien ?\""
echo "- \"Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\\\ !\""
echo "- \"Même des tildes ~ ?\""
echo "- \"Evidemment !\""
```

On peut également tout réunir en une seul ligne avec la commande

```
#!/bin/bash

echo -e "Malgré le prix élevé de 100$, il a dit \"Bonjour !\" au vendeur :\n- \"Bonjour est-ce que ce clavier fonctionne bien ?\"\n- \"Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\\\\ !\"\n- \"Même des tildes ~ ?\"\n- \"Evidemment !\""
```

## 6) La commande jobs -l donne le résultat ci-dessous :
```
wilder@Ubuntu:~$ jobs -l
[1]  37970 En cours d'exécution   gedit &
[2]  37971 En cours d'exécution   xeyes &
[3]- 37972 En cours d'exécution   sleep
```

Quelle commande te permet de mettre en avant le processus gedit ?

Afin de remettre le processus _gedit_ au premier plan, nous devons sasir la commande `fg %1` car _gedit_ est le premier processus actif dans la liste.

## 7) Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.

Dans le modèle OSI :
* La couche 2 est affectée à la _Liaison des données_, elle comprend entre autres les Switchs et les Ponts qui permettent de relier des réseaux physiques.
* La couche 3 est affectée au _Réseau_, elle comprend les Routeurs qui permettent d'interconnecter 2 réseaux afin d'assurer le rouage des paquets.

## 8) Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.

|Commande bash|Commande Powershell|
|:-:|:-:|
|cd|Set-Location|
|cp|Copy-Item|
|mkdir|mkdir ou New-Item -Type Directory|
|ls|Get-ChildItem|

## 9) Dans la trame ethernet, qu'est-ce que le payload ?

Dans la trame _Ethernet_, le _PayLoad_ ou _Charge utile_ correspond aux données qui seront transmises pour une quantité de 1500 octets maximum, accompagnées d'une entête pour former le PDU.

## 10) Pourquoi les classes IP sont remplacées par le CIDR ?

Les classes A / B / C servaient auparavant à créer des plages d'IP, mais celles-ci pouvaient être beaucoup trop grandes par rapport au besoins réels.

Nnous sommes donc passer sur le principe du CIDR qui consiste à créer des plages ou étendues d'adresses IP qui se rapprochent au mieux des besoins.

Il existe ainsi deux méthodes de répartition, la méthode symétrique qui offre à toutes les plages la même quantité d'adresses disponibles, et la méthode asymétrique qui s'adapte en fonction des besoins de chaque plage.