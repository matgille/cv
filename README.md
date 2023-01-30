# Curriculi Vitae Automator
Ce dépôt est voué à contenir les fichiers du compilateur de CV automatique à partir de XML. Schéma à venir !

## Balises possibles: 

entree

annee (@n)

fr

en

lien (@href)

img (@lien, @echelle)

competences

enseignement > annee > entree > anglais | francais

publications > publication > entree > anglais | francais > titre | cit | lieu | pers (@idref | @orcid) > nom

## Fonctionnement: 
Modifier le cv.xml à votre convenance, puis ``make``, et les fichiers seront automatiquement compilés. Vous devez avoir pdflatex installé.
## Licences: 

Sauf ce qui est indiqué ci-dessous, ce dépôt est sous licence CC-BY-NC 4.0

Le modèle de document .tex est sous licence LPPL, a été créé et maintenu par Didier Verna <didier@lrde.epita.fr> à l'aide du paquet [curVe](https://ctan.org/pkg/curve). 

[Saxon 9 HE](http://saxon.sourceforge.net/#F9.9HE) est distribué  [sous licence MPL](https://www.mozilla.org/en-US/MPL/2.0/).
