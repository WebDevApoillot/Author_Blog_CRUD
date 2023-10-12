<?php
require_once('./models/comment_model.php');

function add_comment()
{

    // code

    // View
    require("./views/form_add_comment.php");
}

function store_comment()
{
    var_dump($_POST);


    if (isset($_POST) && !empty($_POST)) {
        $commentText = $_POST['Subject'];
        if (strlen($commentText) > 255) {
            $_SESSION['error'] = "Commentaire trop long.(255 caractère max.)";
            $id = $_POST['id'];
            header("Location: http://projet4git/index.php?action=add-comment&id=$id");
            return;
        }
        $Comment = new comment_model();
        $res = $Comment->comment($_POST);


        if ($res) {
            $_SESSION['success'] = "Commentaire Ajouté";
        } else {
            $_SESSION['error'] = "Erreur Commentaire";
        }

        $id = $_POST['id'];

        header("Location: http://projet4git/index.php?action=article&id=$id");
    }
};

function delete_comment()
{

    $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
    if ($id == 0) {
        header("Location: http://projet4git/index.php?action=admin");
    }


    $Comment = new comment_model();
    $res = $Comment->deleteCommentById($id);

    if ($res) {
        $_SESSION['success'] = "Commentaire Supprimé";
        header("Location: http://projet4git/index.php?action=moderation");
    } else {
        header("Location: http://projet4git/index.php?action=admin");
        $_SESSION['error'] = "Un problème est survenu.";
    }
}

function signal_comment()
{
    $idComment = isset($_GET['idComment']) ? (int) $_GET['idComment'] : 0;
    $idPost = isset($_GET['idPost']) ? (int) $_GET['idPost'] : 0;

    $Comment = new comment_model();
    $res = $Comment->signalOneComment($idComment);
    var_dump($res);

    if ($res) {
        $_SESSION['success'] = "Signalement Effectué";
    } else {
        $_SESSION['error'] = "Un problème est apparu lors du signalement";
    }


    header("Location: http://projet4git/index.php?action=article&id=$idPost");
}
