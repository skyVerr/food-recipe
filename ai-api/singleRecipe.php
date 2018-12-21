<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $recipe_id = $_GET['recipe_id'];
    
    $sql = "SELECT * FROM recipe WHERE recipe_id = '$recipe_id'";

    $query = $con->query($sql);

    require_once('clickcount.php');
    
    $recipe = $query->fetch_assoc();

    echo json_encode($recipe,JSON_NUMERIC_CHECK);
?>