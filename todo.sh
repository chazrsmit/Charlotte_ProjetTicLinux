#!/bin/bask
echo ""
echo "Bienvenue sur ta to-do list !"
echo "Que souhaites-tu faire ?"
echo ""
echo "1. Ajouter une nouvelle tâche"
echo "2. Retirer une tâche"
echo "3. Afficher les tâches"
echo ""
echo "> entrer 1, 2 ou 3"
read choix

# listeT=()
# #implémenter à chaque tâche entrée

case §choix in
    1)
        echo "Ecris la nouvelle tâche ici :"
        read newT
        ;;
    2)
        echo "Quelle tâche souhaites-tu retirer ?"
        #echo liste des tâches > utiliser la commande for (pour chaque tâche présente dans la liste des tâches, echo $tâche > "for tache in "${listeT[@]}"")
        #
        ;;
    3)
        echo "bye"
        ;;
esac