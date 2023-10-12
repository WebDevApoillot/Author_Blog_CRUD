<!DOCTYPE html>
<html lang="en">

<?php include("components/head.php") ?>

<body>
  <?php include("components/header.php") ?>
  <?php include("components/messages.php") ?>


  <div class="containers">
    <div class="column1">
      <div class="Introduction">
        <div class="Photo">
          <img src="../images/JFroche.jpg" alt="JFrochePortrait">
        </div>
        <div class="Texte">
          <p>
            Il est de notoriété publique que Jean Forteroche n'aime guère parler de lui, qui plus est à la troisième personne du singulier.
            Seulement, dans la mesure où la page que vous parcourez s'intitule sobrement "Biographie", nous serions bien embêtés si je décidais de ne pas honorer le contrat qui vous a précisément amené ici. J'en suis tout à fait capable, n'en doutez pas, cher lecteur avisé. Et je pourrais continuer des heures durant à deviser sur le bien-fondé de ma pudeur, ou encore sur le fameux contrat qui m'oblige à temporairement la souiller.
            <br>
            C'est pour cette raison que je m'adresserai à vous comme je m'adresserais à un vieil ami. On a plus grand chose à cacher à un vieil ami, si ce n'est cette part de mystère qui vous rend irrésistiblement intéressant. Car celui qui aime parler de lui suscitera très vite le désintérêt, et celui qui ne dit rien, l'ennui. Distribuer avec minutie les parcelles de son histoire, c'est bien là tout l'art de l'écrivain.
            <br>
            Ainsi, mon vieil ami, il ne vous a pas échappé que je suis écrivain et qu'en qualité d'écrivain, j'écris des livres, dans lesquels je transpose mon goût pour l'absurde et les personnages pittoresques. Certains appelleront cela une signature, d'autres une façon de cacher l'angoisse de la médiocrité.
            <br>
            Il est d'usage de citer les créations qui m'ont permis de vivre de ma plume, alors je me permettrais d'évoquer "Double meurtre à Doubleville" (1993), "L'homme qui parlait aux truites" (1997), "Le burn-out de l'épouvantail" (2008) et, plus récemment, "Billet simple pour l'Alaska", un roman dont vous pourrez suivre la progression en direct sur ce blog.
          </p>
        </div>
      </div>
      <div class="socials">
        <i class="fa-brands fa-facebook fa-3x"></i><a href="#">Jean Forteroche</a>
        <i class="fa-brands fa-twitter fa-3x"></i><a href="#">JeanForterocheOF</a>
        <i class="fa-brands fa-tumblr fa-3x"></i><a href="#">Jean Forteroche</a>
      </div>
    </div>
    <div class="column2">
      <div class="ArticleBody">
        <div class="MainArticle">


          <div class="MainArticleText">


            <?php echo htmlspecialchars_decode($singlePost['message']); ?>

          </div>
        </div>
        <a href="index.php?action=add-comment&id=<?php echo $singlePost['id']; ?>" class="AddComment">Ajouter un commentaire</a>
        <?php foreach ($Comments as $comment) : ?>
          <div class="CommentContainer">
            <div class="ArticleCommentaires">
              <div class="CommentDescription">


                <h2>Auteur: <a href="#"><?php echo $comment['auteur']; ?></a></h2>
                <div class="Signal"><a href="index.php?action=signal&idComment=<?php echo $comment['id']; ?>&idPost=<?php echo $comment['posts_id']; ?>">Signaler</a></div>
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





    <!-- Code injected by live-server -->

</body>

</html>