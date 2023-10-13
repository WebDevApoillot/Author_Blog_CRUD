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
                'mysql:host=db5014646402.hosting-data.io;dbname=dbs12170899;charset=utf8',
                'dbu3276867',
                'AdminTestPass971!'

            );
        } catch (Exception $e) {
            die('Error : ' . $e->getMessage());
        }
    }
}
