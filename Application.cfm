FICHIER APPLICATION.CFM
-------------------------------

Celui-ci contiendras les lignes suivantes : 

<cfcontent type="text/html; charset=iso-8859-1">
<cfset setEncoding("URL", "iso-8859-1")>
<cfset setEncoding("Form", "iso-8859-1")>

Voilà rien de plus simple

Mais c'est pas tout, si vous utilisez une DB MySQL la problème ce présente également à l'insertion (Plus rare) mais surtout et la c'est tout le temps lors de la lectures des données.

Pour régler ce problème , dans l'administrateur COLDFUSION lors de votre paramétrage de connexion , cliquez sur le bouton OPTION AVANCEE (Show Advenced Settings)

Dans le champs Chaine de connexion (Connection String) indiquez la ligne suivante : 

useUnicode=true&characterEncoding=ISO8859_1