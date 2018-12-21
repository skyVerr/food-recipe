<?php 
    header('Access-Control-Allow-Origin: *');
    // header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $recipe_id = json_decode(file_get_contents('php://input'))->recipe_id;

    $sql = "SELECT * FROM recipe WHERE recipe_id = '$recipe_id'";
    
    $recipe = $con->query($sql)->fetch_assoc();

    $exploadedPath = explode('/',$recipe['image']);
    $imageFile = array_pop($exploadedPath);
    try{
        unlink('./images/'.$imageFile);
    } catch(Exception $e){
        
    }


    $sql = "DELETE FROM recipe WHERE recipe_id = '$recipe_id'";

    $con->query($sql);

    echo json_encode(['message' => 'successfully deleted']);
         
?>

<?php 
    function uploadImage($imageFile){
        $exploded = explode(".", $imageFile["name"]);
        $type = array_pop($exploded);
        $newName = uniqid().'.'.$type;
        $dir = "./images/".$newName; 
        move_uploaded_file($imageFile['tmp_name'],$dir);
        return 'http://localhost/ai-api/images/'.$newName;
    }
?>