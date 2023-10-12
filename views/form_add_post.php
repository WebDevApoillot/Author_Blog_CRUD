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
    <div class="column2">
      <div class="Redaction">


        <form class="NewArticle" id="newArticle" method="POST" action="index.php?action=store-post">

          <h2>Votre nouvel article</h2>
          <div class="Articlecontainer">
            <label for="Title"><strong>Titre:</strong></label>

            <input type="text" placeholder="" name="Title" id="Title">
            <label for="Subject"><strong>Votre Article:</strong></label>
            <tinymce-editor api-key="0ki8kh44dpr0iupw97fjo8e0x3vrccw5i082axf6oco1elwv" name="Subject" id="Subject">
            </tinymce-editor>
          </div>
          <button type="submit" id="publishButton">Publier</button>
        </form>

      </div>
    </div>
  </div>
  <script>
    let publishButton = document.getElementById('publishButton');
    let form = document.getElementById('newArticle');
    publishButton.addEventListener('click', (e) => {
      event.preventDefault();
      if (confirm("Souhaitez-vous réellement publier cet article ?")) {
        form.submit();
      }

    });
  </script>
</body>

</html>