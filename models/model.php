<?php
class model
{
    public $db;

    function __construct()
    {
        $this->connectToDb();
    }

    public function connectToDb()
    {
        try {
            $this->db = new PDO(
                'mysql:host=localhost;dbname=blog_forteroche;charset=utf8',
                'root',

            );
        } catch (Exception $e) {
            die('Error : ' . $e->getMessage());
        }
    }
}
