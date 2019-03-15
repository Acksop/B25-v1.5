<?php
session_start();
include('../scriptPHP/sessions.php');
include('../scriptPHP/alertesIntrusions.php');
$id_utilisateur = rechercherUtilisateur($_POST['identifiant'],$_POST['motDePasse']);
//compteur de tentatives de connections
$itx = incrementerTentativesConnection();
if($itx < 100){
	//acc�s normal
	if ($id_utilisateur == -1){
		header("location: ../index.php?page=identification&erreur=1");
	} elseif ($id_utilisateur == -2){
		//utilisateur kick�
		header("location: ../index.php?page=identification&erreur=2");
	} elseif ($id_utilisateur == -3){
		//utilisateur banni
		header("location: ../index.php?page=identification&erreur=3");
	} elseif ($id_utilisateur == -4){
		//utilisateur d�sincrit
		header("location: ../index.php?page=identification&erreur=4");
	} else {
		$_SESSION['id_utilisateur']=$id_utilisateur;
		$_SESSION['identifiant']=$_POST['identifiant'];
		$_SESSION['repertoire']= rechercherRepertoire($id_utilisateur);
		$_SESSION['NoFailleOnLine']=TRUE;
		$type_compte = rechercherTypeDeCompte($id_utilisateur);
		$status_compte = rechercherStatusCompte($id_utilisateur);
		$SESSION['status_compte']=$satus_compte;
		$_SESSION['type_compte']=$type_compte;
		$_SESSION['ip'] = $_SERVER['REMOTE_ADDR']; 
		updateDerniereSession($id_utilisateur);		
		header("location: ../index.php?page=compte");
	}
}else{
	//acharnement
	AlerteSecuriteBruteForce($_POST['identifiant'],$_POST['motDePasse']);
	header("location: ../index.php?page=identification&erreur=5");
}
?>
