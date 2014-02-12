<?php
//Declaration des parametres
$serveur = "localhost";
$base_de_donnes = "JetSetMag";
$user = "root";
$pwd = "";

//Connexion au serveur BD
$lien = mysql_connect($serveur,$user,$pwd)or die("impossible de se connecter");

//Selection de la base de données
mysql_select_db($base_de_donnes,$lien);


//Definition de la requete pour ajouter un utilisateur

  
  						//execution de la commande precedante


 
  $query1 = "select * from album";        
$cur1=mysql_query($query1);
$query1 = "select * from videos";        
$cur2=mysql_query($query1);    


?>