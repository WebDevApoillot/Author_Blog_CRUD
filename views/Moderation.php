<!DOCTYPE html>
<html lang="en">
<?php include("components/head.php") ?>

<body>
  <?php include("components/header.php") ?>
  <?php include("components/messages.php") ?>
  <div class="containers">
    <div class="admincolumn1">

      <?php include("components/adminmenu.php") ?>

    </div>
    <div class="admincolumn2">
      <div class="CommentList">

        <h4> Commentaires de vos articles </h4>
        <?php $post = array_column($Posts, null, 'id');
        foreach ($Comments as $comment) :
          $post_title = $post[$comment['posts_id']]['titre'];
        ?>


          <div class="Commentaires">
            <div class="CommentDescription">
              <h1>Article: <a href="index.php?action=article&id=<?php echo $comment['posts_id']; ?>"><?php echo $post_title; ?></a></h1>
              <h2>Auteur: <a href="#"><?php echo $comment['auteur']; ?></a></h2>
              <div class="Signalement" style="color: <?php echo $comment['signalement'] == 0 ? 'black' : 'red'; ?>"> Signalements:<?php echo $comment['signalement']; ?></div>
              <div class=" Delete"><a href="index.php?action=delete-comment&id=<?php echo $comment['id']; ?>">Supprimer</a></div>
              <h3>Commentaire:</h3>
              <p>
                <?php echo $comment['message']; ?>
              </p>
            </div>

          </div>
        <?php endforeach ?>

      </div>
    </div>
  </div>
  <script>
    let deleteButton = document.querySelectorAll('.Delete');

    for (let i = 0; i < deleteButton.length; i++) {
      deleteButton[i].addEventListener('click', (e) => {
        if (confirm("Souhaitez-vous réellement supprimer ce commentaire ?")) {
          window.location.href = e.target.firstElementChild.getAttribute('href');
        } else {
          e.preventDefault();
        }
      });

    }
  </script>
</body>

</html>