<?php
function pageHome()
{

    $Post = new posts_model();
    $Posts = $Post->getAllPosts();

    require("./views/home.php");
}

function pageAdmin()
{
    CheckAuth();
    $Post = new posts_model();
    $Posts = $Post->getAllPosts();



    // View
    require("./views/AdminPage.php");
}

function pageConnect()
{


    if (isset($_SESSION['usermail'])) {
        header("Location: https://blog-forteroche.apoillot.fr//index.php?action=admin");
    }

    // CheckAuth();

    // View
    require("./views/connection.php");
}
function pageModerate()
{


    $Post = new posts_model();
    $Posts = $Post->getAllPosts();

    $comment = new comment_model();
    $Comments = $comment->getAllComments();


    // code

    // View
    require("./views/Moderation.php");
}

function article()
{
    $id = isset($_GET['id']) ? (int) $_GET['id'] : 0;
    if ($id == 0) {
        header("https://blog-forteroche.apoillot.fr/index.php?action=home.php");
        return;
    }
    $Post = new posts_model();
    $singlePost = $Post->getOnePostById($id);
    $comment = new comment_model();
    $Comments = $comment->getAllCommentsByPostId($id);

    // Creation des url pour les posts
    /* $Post->getAllPosts(); */
    require("./views/Article.php");
}
