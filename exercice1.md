# Exercice 1 - Gestion du stockage (temps estimé : 1h30)

Tu dois utiliser la **VM SRVDEBIAN** fournie par ton formateur.

Voici les comptes disponibles sur cette VM :

|Utilisateur|Mot de passe|
|:-:|:-:|
|root|tSsrsRvdEbianrOot01!|
|wilder|tSsrsRvdEbianwIlder02!|

Le service **ssh** est installé et démarré sur cette VM.

## 1.1 Préparation du disque

La VM a 2 disques dur. Tu dois préparer le second disque dur de cette manière :

* 1 partition de 6 Go de type ext4 nommée "DATA"
* 1 partition avec le reste du disque de type swap nommée "SWAP"

La partition **SWAP** est activée (et donc celle déjà sur le 1er disque est désactivée).

**A rendre :**

* Des copies d'écran ou des lignes de code qui permettent de voir clairement :
    * La création et le formatage des partitions
    * La taille des partitions
    * Le type de système de fichiers
    * La gestion du swap
    * Le nom des partitions

![01](/attachments/Debian_Ex_Prep_01.jpg)

![02](/attachments/Debian_Ex_Prep_02.jpg)

![03](/attachments/Debian_Ex_Prep_03.jpg)

![04](/attachments/Debian_Ex_Prep_04.jpg)

![05](/attachments/Debian_Ex_Prep_05.jpg)

![06](/attachments/Debian_Ex_Prep_06.jpg)

![07](/attachments/Debian_Ex_Prep_07.jpg)

![08](/attachments/Debian_Ex_Prep_08.jpg)

## 1.2 Montage

La partition DATA est montée automatiquement au démarrage du système dans un dossier data placé dans /mnt. L'UUID du disque dois être utilisé.

**A rendre :**

* Des copies d'écran ou des lignes de code qui permettent de voir clairement les étapes de la configuration pour le montage automatique de cette partition.


![01](/attachments/Debian_Ex_Mount_01.jpg)

Fichier `/etc/fstab` avant modification

![02](/attachments/Debian_Ex_Mount_02.jpg)

Montage sans UUID

![03](/attachments/Debian_Ex_Mount_03.jpg)

Vérification erreur avec `mount -a`

![04](/attachments/Debian_Ex_Mount_04.jpg)

Montage avec UUID

![05](/attachments/Debian_Ex_Mount_05.jpg)

Vérification erreur avec `mount -a`

![06](/attachments/Debian_Ex_Mount_06.jpg)

Erreur d'analyse, les UUID sont pourtant exactes...