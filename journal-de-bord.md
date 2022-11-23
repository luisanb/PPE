# Journal de bord du projet encadré
## Le journal de bord vous servira tout au long du projet, vous devrez y écrire régulièrement pour faire part de votre avancement. Vous devrez y indiquer notamment les problèmes que vous avez rencontrés et les solutions que vous avez trouvées. Fiz um trabalho meia-boca, porque não consegui mexer nos fichiers. Além disso, sempre cometo uns erros toscos, de digitação, de falta de atenção, ou de ignorância mesmo.
### Je teste 

## 4 oct 
### Je viens de réussir à faire l'exercice sur les diapos "shell", uhu ! J'ai dû chercher sur Google comment faire les commandes exactement, car sur les diapos ce n'était pas clair. Ce n'était pas difficile. J'ai utilisé les commandes : mkdir, mv, cd, ls, wc (pour compter les archives) avec file. 
### PS : il y a eu une chose que j'ai trouvée un peu bizarre, c'est que j'ai créé des dossiers qui avaient le même nom des archives que je bougeais. Alors le terminal signalait que ce n'était pas possible de les bouger. Par contre, quand je vérifiais, je voyais les archives bien déplacés. Pourquoi le terminal disait ça ??

## Mises à jour des derniers jours :
J'avoue je faisais des notes juste sur le cahier et j'ai complètement oublié d'en prendre sur github.   
J'avais commenté, là dernière fois, que je me trompais souvent en tapant, mais là j'améliore 20%. C'est bien d'apprendre à coder et à utiliser le terminal, parce qu'on est obligés de devenir quelqu'un plus attentif aux details.  
D'ailleurs, j'ai eu des problèmes avec git commit pendant le dernier cours. J'étais perdue dans ce moment-là du cours. D'abord, j'ai pensé que juste moi, j'avais des difficultés avec cette commande (c'est pour cela que j'ai préféré d'être silencieuse et d'essayer à régler mes problèmes plus tard), et puis j'ai vu que tout le monde galérait bien. À la fin, j'avais réussi à ne faire que la commande git pull. Mais, finalement, une collègue de classe m'a présenté la bonne solution pour moi (merci beaucoup !) :  il fallait recloner le dossier sur mon ordi (faire git clone encore et toute de suite git commit). Comme ça, j'ai pu faire git commit tranquillement.  
  
Là je vais essayer de faire quelques exercices que les profs ont demandé. En fait, je n'ai pas très bien compris cette partie. Je vais faire plus d'attention au cours de demain pour l'apprendre. Parfois, c'est difficile à accompagner les profs, c'est comme s'ils croiaient qu'on est déjà assez expert dans ce domaine (bien, au moins moi, je ne le suis pas (encore)).   
$ cp premier_script.sh avec_arguments.gh   
pour copier le fichier  
ANNEE=2016  
TYPE=Location  
$ echo "pour l'année $ANNEE" > sortie.txt  
$ grep "$TYPE" $ANNEE*.ann | wc >> sortie.txt  
  
  
## 22 oct  
Aujourd'hui j'ai finalement réussi à mettre à jour mon dossier sur l'ordi avec "git pull". Je l'ai fait aussi avec le dossier du professeur, pour avoir les slides et exercices à jour. Tout ça a bien marché.  
Là, j'essaye de comprendre des choses basiques, genre comment créer une tag et comprendre ce que je dois remplacer par "commit" dans une commande.  
Fait ! Il ne faut pas écrire un "commit", ça fait partie de ce qui est optionnel. Le plus important de donner un nom à la tag (au tag ?). J'ai mis à jour sur github en ligne aussi avec "git push origin <tagname>". 

  
## 8 nov
 J'essaie d'utiliser "git push" et "git pull".   
 J'ai fait "git pull" avec le dossier Truc- pour le mettre à jour sur mon ordi, ça a marché.  
  Après j'ai fait "git push" mais il a mis à jour juste mon "hello word" de test...  
  Je dois mettre mes URLS sur git.  
  
## 10 nov  
  J'ai commité le projet Truc  
  J'ai fait :  
    1. git status (pour vérifier les dossiers non commités)  
   qui m'a recommandé de faire "git restore <doc x>" et "git add <doc y>"  
   tout ça avant de commiter pour faire "git push"  
    2. git restore <doc x>
    3. git add <doc y>  
    4. git commit -m <message>  
   alors, avant de faire "git push" (c'était refusé)  
    5. git pull  
    6. enfin, git push  
  Comme ça, j'ai actualisé ma partie.
  ### Prochain pas : travailler avec html.
  
  ## 21 et 22 nov   
  - Working on HTML   OK  
  - commit sur github    OK  
  - comprendre le script  
  site : regular expressions 101
