#!/bin/bask

#fonction qui se lance avec les différentes options
fonctionActions () {
        
        echo "Entre une action (indiquer 1, 2, 3 ou 4) :"
        read choix

        case $choix in
            1)
                echo "Entre la nouvelle tâche que tu souhaites ajouter :"
                read newtache
                echo $newtache >> taches.txt #add numerotation avec $i après
                ;;
            2)
                echo "Quelle tâche souhaites-tu retirer ?"
                ;;
            3)
                echo "Voici les tâches dans ta liste :"
                ;;
            4)
                echo "Bye."
                ;;
            *)
                echo "Option invalide. Veuillez entrer 1, 2 ou 3."
                ;;
        esac
}


echo ""
echo "Bienvenue sur ta to-do list !"
echo "Que souhaites-tu faire ?"
echo ""
echo "1. Ajouter une nouvelle tâche"
echo "2. Retirer une tâche"
echo "3. Afficher les tâches"
echo "4. Quitter"
echo ""

#mettre le while qui va faire que temps que la personne ne fait pas 4, le programme continue de tourner > while choix != 4 > fonctionActions


fonctionActions