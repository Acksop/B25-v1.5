<?php
	session_start();
	include("../scriptPHP/connectionBDD.php");
	$sql = "UPDATE Tchat SET valide = '1' WHERE id_dialogue = '".$_POST['id']."'";
	$req = faireUneRequeteOffLine($sql);
	header("location: ../index.php?page=gestionGueuloir");
?>
