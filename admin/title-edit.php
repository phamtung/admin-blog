<?php
include_once('title.php');
$title_id = $_GET['title_id'];
$Title = new title();
$sql = "SELECT * FROM title WHERE title_id = ".$title_id;
$Title->query($sql);
$row = $Title->fetch();

if(isset($_POST['submit'])){
    $title_name = isset($_POST["title_name"]) ? $_POST["title_name"] : '';
    $title_image = isset($_FILES['title_image']['name']) ? $_FILES['title_image']['name'] : '';
        
    move_uploaded_file($_FILES['title_image']['tmp_name'],'themes/images/'.$title_image);

    if($Title->check($title_name, $title_image) == true){
        $error = $Title->errors_check;
    }
    else{
        if($Title->edit($title_id, $title_name, $title_image) == true){
            $error = $Title->errors_rep;
        }
        else {
            header("location:index.php?page_layout=title-list");
        }
    }
    
}
?>

<?php if(isset($error)){echo $error;}?>
<div class = "add-user">
    <form width="200px" method="post" enctype="multipart/form-data">
        <label>Tên danh mục</label><br /><input type="text" name="title_name" value="<?php if(isset($_POST['title_name'])){ echo $_POST['title_name'];}else{ echo $row['title_name'];}?>"/></br>        
        <label>Ảnh danh mục</label><br /><input type="file" name="title_image" /></br>
        
        <input type="submit" name="submit" value="Cập nhật" class = "but-acc"/>
    </form>
</div>