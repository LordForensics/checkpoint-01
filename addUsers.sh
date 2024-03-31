#!/bin/bash

# Afin de lancer le script dans les meilleures conditions
#
# assurez-vous d'avoir les droits d'éxécution
#
# chmod 744 addUsers.sh


# Vérification que la liste des arguments ne soit pas vide
if [ -z $* ]
then
    # Si la liste d'arguments est vide >> Message pour avertir que la liste est vide + sortie du script > exit 1
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
else
    # Si la liste contient des arguments
    # Itération de création des utilisateurs de la liste des arguments
    for waiting_user in $*
    do
        # Vérification que Utilisateur à créer n'existe pas
        if cat /etc/passwd | grep $waiting_user > /dev/null
        then
            # Si Utilisateur à créer existe déjà
            # Message pour avertir que l'utilisateur existe
            echo "L'utilisateur $waiting_user existe déjà"
        else
            # Si Utilisateur à créer n'existe pas
            # Création du compte
            useradd $waiting_user > /dev/null
            # Vérification que Utilisateur a bien été créé
            if cat /etc/passwd | grep $waiting_user > /dev/null
            then
                # Si Vérification OK >> Message pour avertir que le compte a bien été créé
                echo "L'utilisateur $waiting_user a été crée"
            else
                # Si Erreur lors de la vérification >> Message pour avertir qu'une erreur est survenue
                echo "Erreur à la création de l'utilisateur $waiting_user"
            fi
        fi
    done
fi


