<?php

require_once('models/model.php');

class posts_model extends model
{
    public function post($data)
    {
        $articleTitle = htmlspecialchars($data['Title']);
        $articleDate = date('Y-m-d');
        $articleText = htmlspecialchars($data['Subject'], ENT_QUOTES);

        if (!empty($articleTitle) && !empty($articleText)) {
            $query = "INSERT INTO posts(titre,message,date) VALUES(?,?,?)";
            $request = $this->db->prepare($query);
            $request->execute([$articleTitle, $articleText, $articleDate]);
        }
        //check insertion
        if ($request->rowCount() == 1) {
            return true;
        } else {
            return false;
        }
    }


    public function getAllPosts()
    {
        $query = "SELECT * FROM posts ORDER BY timestamp(date) desc ";
        $request = $this->db->prepare($query);
        $request->execute();
        $allPost = $request->fetchAll(PDO::FETCH_ASSOC);


        return $allPost ? $allPost : [];
    }




    public function getOnePostById($id)
    {
        $query = $query = "SELECT id, titre, message, date FROM posts WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        $singlePost = $request->fetch(PDO::FETCH_ASSOC);

        return $singlePost ? $singlePost : [];
    }

    public function updatePostById($id, $titre, $message)
    {
        //sanitize the inputs 
        $id = filter_var($id, FILTER_SANITIZE_NUMBER_INT);
        $titre = filter_var($titre, FILTER_SANITIZE_SPECIAL_CHARS, FILTER_FLAG_STRIP_LOW | FILTER_FLAG_STRIP_HIGH);
        $message = filter_var($message, FILTER_SANITIZE_SPECIAL_CHARS, FILTER_FLAG_STRIP_LOW | FILTER_FLAG_STRIP_HIGH);

        //prepared query
        $query = "UPDATE posts SET titre = :titre, message = :message WHERE id = :id";
        $request = $this->db->prepare($query);
        //parameter binding
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->bindParam(":titre", $titre, PDO::PARAM_STR);
        $request->bindParam(":message", $message, PDO::PARAM_STR);
        // $request->bindParam(":date", $date, PDO::PARAM_STR);
        $request->execute();
        var_dump($request);
        if ($request->rowCount() == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function deletePostById($id)
    {
        $query = "DELETE FROM posts WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        if ($request->rowCount() == 1) {
            return true;
        } else {
            return false;
        }
    }
}
