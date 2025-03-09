#!/bin/bask


# Fichier de stockage des tâches
FICHIER_TACHES="taches.txt"

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
                echo "Voici les tâches dans ta liste :"
                echo "$(<taches.txt)"
                ;;
            2)
                echo ""
                echo "Entre la nouvelle tâche que tu souhaites ajouter :"
                read newtache
                echo $1$newtache >> taches.txt #les tâches entrées s'ajoutent dans le fichier taches.txt
                ;;
            3)
                echo ""
                if [ ! -s "$FICHIER_TACHES" ];
                then
                    echo "La liste de tâches est vide."
                else
                    echo "Quelle tâche souhaites-tu retirer ?"
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
fi