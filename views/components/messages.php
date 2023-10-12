<?php


if (isset($_SESSION) && isset($_SESSION['success'])) {
?>
    <div class="checkMessage">
        <i class="fa-solid fa-check"></i>
        <p>Succès : <?= $_SESSION['success']; ?></p>
    </div>
<?php
    unset($_SESSION['success']);
}

?>


<?php

if (isset($_SESSION) && isset($_SESSION['error'])) {
?>
    <div class="checkMessage">

        <i class="fa-solid fa-xmark"></i>
        <p>Erreur : <?= $_SESSION['error']; ?></p>
    </div>
<?php
    unset($_SESSION['error']);
}

?>