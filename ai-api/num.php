<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $keyword = $_GET['keyword'];
    
    $sql = "SELECT COUNT(*) as count FROM recipe WHERE name like '$keyword%'";

    $query = $con->query($sql);

    $row = $query->fetch_assoc();

    echo json_encode($row,JSON_NUMERIC_CHECK);
?>