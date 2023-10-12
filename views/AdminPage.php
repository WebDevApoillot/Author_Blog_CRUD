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
      <div class="ArticleList">
        <?php foreach ($Posts as $post) : ?>
          <div class="Articles">


            <div class="ArticleDescription">
              <h2><a href="index.php?action=article&id=<?php echo $post['id']; ?>"><?php echo $post['titre']; ?></a></h2>
              <div class="Edit"><a href="index.php?action=edit-post&id=<?php echo $post['id']; ?>">Editer</a></div>
              <div class="Delete"><a href="index.php?action=delete-post&id=<?php echo $post['id']; ?>">Supprimer</a></div>
              <p><?php echo substr_replace(strip_tags(htmlspecialchars_decode($post['message'])), "...", 400); ?>
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
        if (confirm("Souhaitez-vous réellement supprimer cet article ?")) {
          window.location.href = e.target.firstElementChild.getAttribute('href');
        } else {
          e.preventDefault();
        }
      });

    }
  </script>

</body>

</html>