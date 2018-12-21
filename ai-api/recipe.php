<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');
    
    $sql = "SELECT * FROM recipe";

    $query = $con->query($sql);

    $recipes = [];
    
    while($recipe = $query->fetch_assoc()){
        $recipes[] = $recipe;
    }

    echo json_encode($recipes,JSON_NUMERIC_CHECK);
?>