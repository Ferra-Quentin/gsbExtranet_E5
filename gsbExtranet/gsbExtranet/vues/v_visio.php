<!DOCTYPE html>

<?php
    include("vues/v_sommaire.php");
?>

	<div class="col-md-4 col-md-offset-4">
            <div class="login-wrapper">
                <div class="box">
                    <div class="content-wrap">
                        <legend>Liste des Visio conférences</legend>
                        <h7>En cliquant sur une des visioconférences vous serez considéré comme inscrit.</h7>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <p>
                            <?php
                            foreach($lesVisios as $unVisio){
                                $nom = $unVisio['nomVisio'];
                                $id = $unVisio['id'];
                                echo "<a href=index.php?uc=visio&action=selectVisio&id=$id>$nom</a><br>";
                                echo '<br>';
                            }
                            ?>
                        </p>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
