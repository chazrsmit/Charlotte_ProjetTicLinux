#!/bin/bask


#fonction qui se lance avec les différentes options.
fonctionActions () {
        
    choix=0

    while [ $choix -ne 4 ] #tant que l'utilisateur n'indique pas 4 (quit), le programme continue de tourner.
    #attention : faire en sorte que ça ne quit pas quand on rentre un caractère (le while s'attend à un integer)
    do
        echo ""
        echo "Choisis une action (indiquer 1, 2, 3 ou 4) :"
        read choix

        case $choix in
            1)
                echo ""
                if [ ! -s "taches.txt" ]; #permet de vérifier si la liste de tâches est vide 
                then
                    echo "La liste de tâches est vide."
                else
                    echo "Voici les tâches dans ta liste :"
                    cat -n "taches.txt" #cette commande permet d'afficher la liste avec des numéros ; sinon echo "$(<taches.txt)" mais n'affiche pas de numéro
                fi
                ;;
            2)
                echo ""
                echo "Entre la nouvelle tâche que tu souhaites ajouter :"
                read newtache
                echo $1$newtache >> taches.txt #les tâches entrées s'ajoutent dans le fichier taches.txt
                ;;
            3)
                echo ""
                if [ ! -s "taches.txt" ]; #permet de vérifier si la liste de tâches est vide 
                then
                    echo "La liste de tâches est vide."
                else
                    echo "Quelle tâche souhaites-tu retirer ?"
                    echo ""
                    echo "Voici les tâches dans ta liste :"
                    cat -n "taches.txt"
                    echo ""
                    echo "Entre le numéro de la tâche à supprimer :"
                    read numero_tache
                        if [[ "$numero_tache" =~ ^[0-9]+$ ]] #cette partie permet de vérifier que l'utilisateur a bien entré un numéro > ^[0-9]+$ permet de vérifier cela
                        then
                            nombre_lignes=$(wc -l < "taches.txt") #comptage du nombre de lignes dans le fichier tache.txt qui sera stocké dans cette variable

                            if [ "$numero_tache" -gt 0 ] && [ "$numero_tache" -le "$nombre_lignes" ]
                            then
                                sed -i "${numero_tache}d" "taches.txt"
                                echo "Tâche numéro $numero_tache supprimée avec succès !"
                            else
                                echo "Erreur: Le numéro de tâche doit être compris entre 1 et $nombre_lignes."
                            fi
                        fi
                fi
                ;;
            4)
                echo ""
                echo "Bye."
                ;;
            *)
                echo ""
                echo "Option invalide. Entre 1, 2, 3 ou 4 - pour quitter."
                ;;
        esac
    done
}

start () {

    echo ""
    echo "Bienvenue sur ta to-do list !"
    echo ""
    echo "Tu peux :"
    echo "1. Afficher les tâches"
    echo "2. Ajouter une nouvelle tâche"
    echo "3. Retirer une tâche"
    echo "4. Quitter"
    echo ""
    echo "Veux-tu commencer ? (oui / non)"
    read choixdebut

    if [ ${choixdebut,,} = "non" ] #${variable,,} permet de transformer la valeur entrée en lowercase (Non = non)
    then
        echo "Bye."
    elif [ ${choixdebut,,} = "oui" ]
    then
        fonctionActions #lancement de la fonction et du programme
    else 
        echo "Réponse invalide. Il faut entrer 'Oui' ou 'Non'."
        start #on redemande à la personne si elle veut continuer
    fi
}

start