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
if [ $# - ne 2 ]
then
	echo "ce programme demande un argument"
		exit
fi


# modifier la ligne suivante pour créer effectivement du HTML
# echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

echo "<html>
	<head>
		<meta charset="UTF-8"/>
	</head>
	<body>
		<p>Tableau d'URLS en portugais</p>

		    <table border=solid width=100%>
		    	<tr>
    	   		  <th>Nº</th>
    	  		  <th>SITES $1</th>
		 	  <th>LIENS</th>
    			</tr> $fichier_tableau 

	</body> 



while read -r LINE ;
do
	resultat=$(curl --head --silent $LINE | grep -i -P -o "charset" | cut -d " " -f 2 | head -n1)
	if [[ $resultat -eq 200 ]]
	then
	echo "
		<tr><td>1</td><td>"$resultat"</td><td>"$LINE"</td></tr>" >> $fichier_tableau
	
	fi
done < $fichier_urls

echo "

	</table>
   </body>
</html>

" >> $fichier_tableau


#lineno=1;

#while read -r line;
#do
#	echo "ligne $lineno: $line";
#	lineno=$((lineno+1));
#done < $fichier_urls
