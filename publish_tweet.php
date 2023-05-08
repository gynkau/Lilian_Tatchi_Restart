<?php
    // on inclu les infirmations sql
    include 'pdo.php';

    // on récupére le message depuis le POST du form
    $message = $_POST['message'];

    // vu qu'il n'y a pas de système de connexion, on publie le tweet avec l'id d'utisateur 1 (alice123)
    $id_utilisateur = 1;

    // on prépare et exécute la requête sql pour l'ajouter en base
    $sql = $bdd->prepare("INSERT INTO tweets(contenu, id_utilisateur) VALUES (:contenu, :id_utilisateur)");
    $sql->bindParam(':contenu', $message, PDO::PARAM_STR);                                                           
    $sql->bindParam(':id_utilisateur', $id_utilisateur, PDO::PARAM_INT);
    $sql->execute();

    // on redirige vers l'index'
    header('Location: index.php');
?>