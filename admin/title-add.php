<?php
include_once('title.php');
if(isset($_POST['submit'])){
    $title_name = isset($_POST["title_name"]) ? $_POST["title_name"] : '';
    $title_image = isset($_FILES['title_image']['name']) ? $_FILES['title_image']['name'] : '';
    move_uploaded_file($_FILES['title_image']['tmp_name'],'themes/images/'.$title_image);
  
    $Title = new title();
    if($Title->check($title_name, $title_image) == true){
        $error = $Title->errors_check;
    }
    else{
        if($Title->add($title_name, $title_image) == true){
            $error = $Title->errors;
        }
        else {
            header("location:index.php?page_layout=title-list");
        }
    }
    
}
?>

<?php if(isset($error)){echo $error;}?>
<div class = "add">
    <form method="post" enctype="multipart/form-data">       
        <label>Tên danh mục</label><br /><input type="text" name="title_name" /></br>
        <label>Ảnh danh mục</label><br /><input type="file" name="title_image" /></br>
        <input type="submit" name="submit" value="Thêm mới" class="but"/>
    </form>
</div>