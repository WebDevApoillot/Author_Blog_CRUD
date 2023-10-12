<?php

if (isset($_POST['submit'])) {
    $utilisateur = $_POST["usermail"];
    $motdepasse = $_POST["psw"];


    echo 'Utilisateur :' . $utilisateur;
    echo 'Mot de passe : ' . $motdepasse;
    exit;
}
