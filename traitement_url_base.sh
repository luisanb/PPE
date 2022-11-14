#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie

# !!!!!!
# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!
if [ $ # - ne 1 ]
then
	echo " ce programme demande un argument "
		exit
fi


# modifier la ligne suivante pour créer effectivement du HTML
echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

# curl --head et faire une variable
header=$(curl --head https://www.dicionarioinformal.com.br/diferenca-entre/trem/coisa/)
while read -r LINE ;
do
	echo " la ligne : $LINE "
	if [[ $LINE =∼ " ^ https ?:// " ]]
	then
		echo " ressemble à une URL valide "
		OK = $ ( expr $OK + 1)
	else
		echo " ne ressemble pas à une URL valide "
		NOK = $ ( expr $NOK + 1)
	fi
done < $FICHIER_URLS
echo " $OK URLs et $NOK lignes douteuses "


lineno=1;

while read -r line;
do
	echo "ligne $lineno: $line";
	lineno=$((lineno+1));
done < $fichier_urls