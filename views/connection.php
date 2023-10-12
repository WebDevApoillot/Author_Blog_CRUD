<!DOCTYPE html>
<html lang="en">

<?php include("components/head.php") ?>

<body>
  <?php include("components/header.php") ?>


  <div class="Formulaire">
    <?php include("components/messages.php") ?>
    <form class="LoginForm" method="POST" action="index.php?action=traitement">
      <h1>Connectez-vous</h1>
      <div class="formcontainer">
        <hr>
        <div class="container">
          <label for="username"><strong>Utilisateur</strong></label>
          <input type="email" placeholder="Votre-email" name="usermail" id="username" required>
          <label for="psw"><strong>Mot de Passe</strong></label>
          <input type="password" placeholder="Mot de Passe" name="psw" id="psw" required>
        </div>
        <button name="submit">Connexion</button>
        <div class="container-bottom">
          <input type="checkbox" checked="checked" name="remember"> Se souvenir de moi

          <span class="psw"><a href="#"> Mot de Passe oublié ? </a></span>
        </div>
        <span class="admin"><a href="index.php?action=admin"> Espace Administrateur </a></span>
      </div>
    </form>
  </div>
</body>