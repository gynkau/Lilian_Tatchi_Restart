<?php
    // on inclu les infirmations sql
    include 'pdo.php';

    // on récupére les valeurs de l'utilisateur
    $nom = $_POST['nom'];
    $pseudo = $_POST['pseudo'];
    $mail = $_POST['email'];
    $motdepasse = $_POST['motdepasse'];
    // photo issue de picsum
    $photo = 'https://picsum.photos/200';

    // on prépare et exécute la requête sql pour l'ajouter en base
    // pour s'assurer que tout se passe bien
    try 
    {
        $sql = $bdd->prepare("INSERT INTO utilisateurs(nom, pseudo, mail, motdepasse, photo) VALUES (:nom, :pseudo, :mail, :motdepasse, :photo)");
        $sql->bindParam(':nom', $nom, PDO::PARAM_STR);                                                           
        $sql->bindParam(':pseudo', $pseudo, PDO::PARAM_STR); 
        $sql->bindParam(':mail', $mail, PDO::PARAM_STR); 
        // on stock le mot de passe en sha1 pour des raisons de sécurité
        $sql->bindParam(':motdepasse', sha1($motdepasse), PDO::PARAM_STR); 
        $sql->bindParam(':photo', $photo, PDO::PARAM_STR); 
        $sql->execute();
    
        // on redirige vers l'index si tout se passe bien
        header('Location: index.php');
    } 
    catch(Exception $e) {
        echo $e;
    }
?>