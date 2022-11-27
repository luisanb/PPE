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


# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!
if [[ $# -ne 2 ]]  # si le nombre d'arguments est différent de 2
then
	echo "Ce programme demande un argument"
	exit
fi

mot="trem" # à réfléchir

# modifier la ligne suivante pour créer effectivement du HTML
# echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

echo $fichier_urls;
basename=$(basename -s .txt $fichier_urls)

echo "<html>
	<head>
		<meta charset="UTF-8"/>
	</head>
	<body>
		<p>Tableau d'URLS en portugais</p>
		    <table border=solid width=100%>" > $fichier_tableau
echo "<h2>Tableau $basename :</h2>" >> $fichier_tableau
echo "<br/>" >> $fichier_tableau
echo "<table>" >> $fichier_tableau
echo "<tr><th>LIGNE</th><th>CODE</th><th>URL</th><th>encodage</th></tr>" >> $fichier_tableau

# -d= délimiteur
# f terminologie table field / champs

lineno=1;  # line number
while read -r URL;
do
	echo -e "\tURL : $URL";
	
	# il y a deux options de le faire
	# code=$(curl --head --silent $URL | grep -i -P -o "^HTTP/" | cut -d " " -f 2 | tail -n 1) # on prendre la dernière ligne 
	
	code=$(curl -ILs $URL | grep -e "^HTTP/" | grep -Eo "[0-9]{3}" | tail -n 1) 
	charset=$(curl -ILs $URL | egrep -o "charset=(\w|-)+" | cut -d= -f2 | tail -n 1) 
	# -I - pour recuperer l'en-tete, -f2 pour recuperer la deuxieme colonne, -s - mode silencieux
	echo -e "\tcode : $code";
	
	if [[ ! $chasert ]] # s'il n'existe pas
	then
		echo -e "\tencodage non détecté, on prendra UTF-8 par défaut."; 
	else
		echo -e "\tencodage : $charset";
	fi
	
	if [[ $code -eq 200 ]]
	then
		aspiration=$(curl $URL > ../aspirations/$basename-$lineno.html)
		dump=$(lynx -dump -nolist -assume_chasert=$chasert -display_charset=$charset $URL)
		if [[ $chasert -ne "UTF-8" && -n "$dump" ]] # au cas où il n'y a pas cet encodage, on va le convertir
		then 
			dump=$(echo $dump | iconv -if $charset -t UTF-8//IGNORE)
		fi
	else
		echo -e "\tcode différent de 200 utilisation d'un dump vide"
		dump=""
		chasert=""
	fi	
	
	
	echo "<tr><td>$lineno</td><td>$code</td><td><a href=\"$URL\">$URL</a></td><td>$charset</td></tr>" >> $fichier_tableau
	echo -e "\t--------------------------------"
	lineno=$((lineno+1));
	echo "$dump" > ../dumps-text/$basename-$lineno
done < $fichier_urls
echo "</table>" >> $fichier_tableau
echo "</body></html>" >> $fichier_tableau
