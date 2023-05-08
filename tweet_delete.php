<?php
    // on inclu les infirmations sql
    include 'pdo.php';

    // on récupére l'id du tweet à supprimer depuis le POST du form
    $id_to_remove = $_POST['bouton'];

    // on exécute la requête sql
    $stmt = $bdd->prepare('DELETE FROM `tweets` WHERE id = :id_to_remove');
    $stmt->bindParam(':id_to_remove', $id_to_remove);
    $stmt->execute();

    // redirection vers l'index
    header('Location: index.php');
?>