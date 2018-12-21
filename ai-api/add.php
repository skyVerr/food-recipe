<?php 
    header('Access-Control-Allow-Origin: *');
    header('Content-type: Application/json');
?>

<?php 
    require_once('connect.php');

    $name = mysqli_real_escape_string($con,$_POST['name']);
    $ingreidents = mysqli_real_escape_string($con,$_POST['ingredients']);
    $preparation = mysqli_real_escape_string($con,$_POST['preparation']);
    $image = uploadImage($_FILES['image']);

    $sql = "INSERT INTO recipe SET 
            name = '$name',
            ingredients = '$ingreidents',
            preparation = '$preparation',
            image = '$image' ";

    if($con->query($sql)){
        echo json_encode(["message"=>"inserted","id"=>$con->insert_id],JSON_NUMERIC_CHECK);
    }
         
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