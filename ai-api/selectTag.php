<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $id = $_GET['id'];
    
    $sql = "SELECT * FROM tags WHERE tag_id = $id ";

    $query = $con->query($sql);

    $recipes = [];
    
    while($recipe = $query->fetch_assoc()){
        $recipes[] = $recipe;
    }

    echo json_encode($recipes,JSON_NUMERIC_CHECK);
?>