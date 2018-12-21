<?php
    header("Access-Control-Allow-Origin: *");
    header("content-type: application/json");
?>

<?php
    require_once('connect.php');

    $sql = 'SELECT * FROM tblFood';

    if(isset($_GET['keyword'])){
        $keyword = $_GET['keyword'];
        $sql = "SELECT * FROM tblFood WHERE foodName LIKE '%$keyword%'";
    }

    $result = $db->query($sql);

    $info = [];

    while($data = $result->fetch_assoc()){
        $info[] = $data;
    }
   
    echo json_encode($info,JSON_NUMERIC_CHECK);
    echo json_last_error_msg();
    
?>
