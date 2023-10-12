<?php
session_start();
unset($_SESSION["usermail"]);
unset($_SESSION["isLogin"]);
session_destroy();
header("Location: http://projet4/index.php?action=connection");
