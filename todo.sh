#!/bin/bask

#fonction qui se lance avec les différentes options.
fonctionActions () {
        
    tour=1
    choix=0

    while [ $choix -ne 4 ] #tant que l'utilisateur n'indique pas 4 (quit), le programme continue de tourner.
    do
        echo "Choisis une action (indiquer 1, 2, 3 ou 4) :"
        read choix

        case $choix in
            1)
                echo "Voici les tâches dans ta liste :"
                ;;
            2)
                echo "Entre la nouvelle tâche que tu souhaites ajouter :"
                read newtache
                echo $newtache >> taches.txt #les tâches entrées s'ajoutent dans le fichier taches.txt
                ;;
            3)
                echo "Quelle tâche souhaites-tu retirer ?"
                ;;
            4)
                echo "Bye."
                ;;
            *)
                echo "Option invalide. Veuillez entrer 1, 2 ou 3."
                ;;
        esac
        ((tour++))
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

if [ ${choixdebut,,} = "non" ]
then
    echo "Bye."
elif [ ${choixdebut,,} = "oui" ]
then
    fonctionActions
else 
    echo "Réponse invalide. Il faut entrer 'Oui' ou 'Non'."
fi