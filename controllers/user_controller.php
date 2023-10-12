<?php

require_once('./models/user_model.php');
function connexion()
{


    if (isset($_POST) && !empty($_POST)) {


        $User = new user_model();
        $username = htmlspecialchars($_POST["usermail"]);
        $password = htmlspecialchars($_POST["psw"]);
        $isLogin = $User->login($username, $password);

        if ($isLogin) {

            $_SESSION["usermail"] = $_POST["usermail"];
            $_SESSION["isLogin"] = true;

            header("Location: http://projet4git/index.php?action=admin");
            return;
        } else if (isset($_POST) && empty($_POST["usermail"]) || empty($_POST["psw"])) {
            $_SESSION['error'] = "Un ou plusieurs champs sont manquant. ";
            header("Location: http://projet4git/index.php?action=connection");
            return;
        } else {
            $_SESSION['error'] = "Email ou mot de passe incorrect. ";
            header("Location: http://projet4git/index.php?action=connection");
            return;
        };
    }
}


function logout()
{
    session_destroy();
    header("Location: http://projet4git/index.php?action=connection");
};


function CheckAuth()
{
    if (isset($_SESSION['usermail'])) {
        return true;
        header("Location: http://projet4git/index.php?action=admin");
    } else {
        // echo "here3";
        header("Location: http://projet4git/index.php?action=connection");
        return;
    }
}; //Si il y a une session si non retour login}
