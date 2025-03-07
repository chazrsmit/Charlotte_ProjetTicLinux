#!/bin/bask

# echo "entre du texte"
# read texte
# echo $texte >> taches.txt

echo ""
echo "Bienvenue sur ta to-do list !"
echo "Que souhaites-tu faire ?"
echo ""
echo "1. Ajouter une nouvelle tâche"
echo "2. Retirer une tâche"
echo "3. Afficher les tâches"
echo ""

echo "Entre une action (indiquer 1, 2 ou 3) :"
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
        echo "Bye."
        ;;
    *)
        echo "Option invalide. Veuillez entrer 1, 2 ou 3."
        ;;
esac