<?php 
    header('Access-Control-Allow-Origin: *');
     header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $keyword = $_GET['keyword'];

    $sql = "SELECT * FROM recipe WHERE name LIKE '%$keyword%' ORDER BY `recipe`.`click_count` DESC";
    
    $query = $con->query($sql);

    $recipes = [];
    

    while($row = $query->fetch_assoc()){
        $recipes[] = $row;
    }

    echo json_encode($recipes);
?>

