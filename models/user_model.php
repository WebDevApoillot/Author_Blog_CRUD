<?php

require_once('models/model.php');

class user_model extends model
{

    public function login($email, $password)
    {


        $query = "SELECT password FROM users WHERE email=?";
        $request = $this->db->prepare($query);
        $request->execute(array($email));
        $user = $request->fetch(PDO::FETCH_ASSOC);


        if (password_verify($password, $user['password'])) {
            // echo 'here1';

            return true;
        } else {
            // echo 'here3';
            return false;
        }
    }
}
