<?php 
    $sql2 = "UPDATE recipe SET click_count = click_count+1 WHERE recipe_id = $recipe_id";
    $con->query($sql2);
?>