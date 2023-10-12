<!DOCTYPE html>
<html lang="en">

<?php include("components/head.php") ?>

<body>
    <?php include("components/header.php") ?>
    <div class="containers">
        <div class="admincolumn1">

            <?php include("components/adminmenu.php") ?>

        </div>
        <div class="column2">
            <div class="Redaction">


                <form class="NewArticle" id="newArticle" method="POST" action="index.php?action=update-post">

                    <h2>Editez votre article</h2>
                    <div class="Articlecontainer">
                        <label for="titre"><strong>Titre:</strong></label>

                        <input type="text" id="titre" placeholder="Votre titre ici" name="titre" value="<?php echo $singlePost['titre'] ?>">
                        <label for="message"><strong>Votre Article:</strong></label>
                        <tinymce-editor api-key="0ki8kh44dpr0iupw97fjo8e0x3vrccw5i082axf6oco1elwv" name="message" id="message">
                            <?php echo htmlspecialchars_decode($singlePost['message']) ?>
                        </tinymce-editor>
                        <input type="hidden" name="id" value="<?php echo $singlePost['id'] ?>">
                    </div>

                    <button type="submit" id="editbutton">Publier</button>
                </form>

            </div>
        </div>
    </div>
    <script>
        tinymce.init({
            selector: 'tinymce-editor',
        });
    </script>
</body>

</html>