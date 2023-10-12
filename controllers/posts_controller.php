<?php
require_once('./models/posts_model.php');


function add_post()
{

    // code

    // View
    require("./views/form_add_post.php");
}


function store_post()
{

    echo "store_post here1";

    if (isset($_POST) && !empty($_POST)) {

        $Post = new posts_model();
        $res = $Post->post($_POST);


        if ($res) {
            header("Location: http://projet4git/index.php?action=add-post");
            $_SESSION['success'] = "Article Publié.";
        } else {
            $_SESSION['error'] = "Erreur lors de la publication.";
            header("Location: http://projet4git/index.php?action=admin");
        }
    }
};

function edit_post()
{
    // grab post ID
    $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
    if ($id == 0) {
        header("Location: http://projet4git/index.php?action=admin");
    }

    // match post and ID
    $Post = new posts_model();
    $singlePost = $Post->getOnePostById($id);




    require("./views/edit_post.php");
}


function update_post()
{


    if (isset($_POST) && !empty($_POST)) {

        /* var_dump($_POST); */


        $id = ($_POST['id']);
        $titre = ($_POST['titre']);
        $message = ($_POST['message']);


        $Post = new posts_model();
        $res = $Post->updatePostById($id, $titre, $message);


        if ($res) {
            $_SESSION['success'] = "Modification enregistrée.";
            header("Location: http://projet4git/index.php?action=edit-post&id=$id");
        } else {
            $_SESSION['error'] = "Un problème est survenu.";
            header("Location: http://projet4git/index.php?action=admin");
        }
    }
};
function delete_post()
{

    $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
    //ERROR Si il y a pas d'id redirection vers dashboard
    if ($id == 0) {
        header("Location: http://projet4git/index.php?action=admin");
    }


    $Post = new posts_model();
    $res = $Post->deletePostById($id);

    if ($res) {
        $_SESSION['success'] = "Article Supprimé";
    } else {
        $_SESSION['error'] = "Un problème est survenu.";
    }
    header("Location: http://projet4git/index.php?action=admin");
};
