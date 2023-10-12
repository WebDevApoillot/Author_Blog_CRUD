<?php
session_start();
//var_dump($_SESSION);

require_once("./controllers/user_controller.php");
require_once("./controllers/pages_controller.php");
require_once("./controllers/posts_controller.php");
require_once("./controllers/comment_controller.php");

// Middleweare

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'home':
            pageHome();
            break;
        case 'admin':
            pageAdmin();
            break;
        case 'signal':
            signal_comment();
            break;
        case 'add-post':
            add_post();
            break;
        case 'edit-post':
            edit_post();
            break;
        case 'delete-post':
            delete_post();
            break;
        case 'store-post':
            store_post();
            break;
        case 'update-post':
            update_post();
            break;
        case 'add-comment':
            add_comment();
            break;
        case 'store-comment':
            store_comment();
            break;
        case 'delete-comment':
            delete_comment();
            break;
        case 'connection':
            pageConnect();
            break;

        case 'moderation':
            pageModerate();
            break;

        case 'traitement':
            connexion();
            break;
        case 'article':
            article();
            break;
        case 'logout':
            logout();
            break;

        default:
            # code... 
            var_dump("404");
            break;
    }
} else {
    pageHome();
}
