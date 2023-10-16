<?php

require_once('models/model.php');

class comment_model extends model
{
    public function comment($data)
    {
        $commentAuthor = htmlspecialchars($data['Author']);
        $commentDate = date('Y-m-d');
        $commentText = htmlspecialchars($data['Subject']);
        $postID = $_POST['id'];
        if (!empty($commentAuthor) && !empty($commentText) && !empty($postID)) {
            $query = "INSERT INTO commentaires(auteur,message,date,posts_id) VALUES(?,?,?,?)";
            $request = $this->db->prepare($query);
            $request->execute([$commentAuthor, $commentText, $commentDate, $postID]);
            
            //véfirer l'insertion et renvoyer true
            if ($request->rowCount() == 1) {
                return true;
            }
        } else {
            return false;
        }
    }
    public function getAllComments()
    {
        $query = "SELECT * FROM commentaires ORDER BY timestamp(date) desc ";
        $request = $this->db->prepare($query);
        $request->execute();
        $allComment = $request->fetchAll(PDO::FETCH_ASSOC);
        foreach ($allComment as $comment) {
            $comment['message'] = htmlspecialchars_decode($comment['message']);
        }

        return $allComment ? $allComment : [];
    }
    public function getAllCommentsByPostId($id)
    {
        $query = "SELECT * FROM commentaires WHERE posts_id=:id ORDER BY timestamp(date) desc LIMIT 5";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        $allPostComment = $request->fetchAll(PDO::FETCH_ASSOC);
        foreach ($allPostComment as $comment) {
            $comment['message'] = htmlspecialchars_decode($comment['message']);
        }

        return $allPostComment ? $allPostComment : [];
    }
    public function getOneCommentById($id)
    {
        $query = $query = "SELECT id, auteur, message, date FROM commentaires WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        $singleComment = $request->fetch(PDO::FETCH_ASSOC);


        return $singleComment ? $singleComment : [];
    }
    public function deleteCommentById($id)
    {
        $query = "DELETE FROM commentaires WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        if ($request->rowCount() == 1) {
            return true;
        } else {
            return false;
        }
    }
    public function signalOneComment($id)
    {
        $id = filter_var($id, FILTER_SANITIZE_NUMBER_INT);
        $query = "UPDATE commentaires SET signalement =1 WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();


        //Select where id
        $query = "SELECT signalement FROM commentaires WHERE id= :id";
        $request = $this->db->prepare($query);
        $request->bindParam(":id", $id, PDO::PARAM_INT);
        $request->execute();
        $result = $request->fetch(PDO::FETCH_ASSOC);
        //Vérifier si signaler == 1
        if ($result['signalement'] == 1) {
            //Si oui return true
            return true;
        } else {
            //Si non  return false
            return false;
        }
    }
};
