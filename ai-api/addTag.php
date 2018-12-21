<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $tag = json_decode(file_get_contents('php://input'));

    $name = mysqli_real_escape_string($con,$tag->name);
    $recipe_id = $tag->recipe_id;

    $sql = "INSERT INTO tags SET 
            tag = '$name',
            recipe_id = '$recipe_id'";

    if($con->query($sql)){
        echo json_encode(["message"=>"inserted"]);
    }
         
?>