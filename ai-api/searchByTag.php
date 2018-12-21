<?php 
    header('Access-Control-Allow-Origin: *');
     header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $keyword = $_GET['keyword'];

    $sql = "SELECT recipe.* FROM recipe INNER JOIN tags on tags.recipe_id = recipe.recipe_id 
    WHERE tags.tag = '$keyword' ORDER BY click_count DESC";
    
    $query = $con->query($sql);

    $recipes = [];
    
    if($query->num_rows > 0){
        while($row = $query->fetch_assoc()){
            $recipes[] = $row;
        }
    }

    echo json_encode($recipes);
?>

