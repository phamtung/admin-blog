<?php
 	ob_start();
    session_start();
	include_once ('pagination.php');
	include_once ('user.php');
 	error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);

 	if(!(isset($_SESSION["email"]) && isset($_SESSION["password"] ))){
		header('location:login.php');
	}
	else {

 	$layout = $_GET['page_layout'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>ADMIN</title>
	<link rel="stylesheet" type="text/css" href="themes/css/admin.css" />
	<link href="themes/css/bootstrap.min.css" rel="stylesheet" >
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript" language="Javascript">
		$(function(){
			$(".menu-1").click(function(){
				if (! $(this).hasClass('show')) {
					$(".submenu").slideUp();
					$(".menu-1").removeClass("show");
					$(this).addClass('show');
					$(this).next().slideToggle();
				}
				else{
					$(".submenu").slideUp();
					$(this).next().slideToggle();
				}
			});
		});
	</script>
</head>

<body>
	<div class="col-md-2 body-left">
		<div class="logo">
			<a href="index.php"><img src="themes/images/logo.png"></a>
		</div>
		<div class="menu">
			<div class="menu-1 show">
				<span>post</span>
			</div>
			<div class="submenu <?php echo ($layout == "post-add" || $layout == "post-list") ? 'active': ''?>" >
				<div class="menu-2">
					<a href="index.php?page_layout=post-add" <?php echo $layout == "post-add" ? 'class="menu-active"': ''?>>thêm mới bài viết</a>
				</div>
				<div class="menu-2">
					<a href="index.php?page_layout=post-list" <?php echo $layout == "post-list" ? 'class="menu-active"': ''?>>danh sách bài viết</a>
				</div>
			</div>
			<div class="menu-1">
				<span>danh mục</span>
			</div>
			<div class="submenu <?php echo ($layout == "title-add" || $layout == "title-list") ? 'active': ''?>">
				<div class="menu-2">
					<a href="index.php?page_layout=title-add" <?php echo $layout == "title-add" ? 'class="menu-active"': ''?>>thêm danh mục</a>
				</div>
				<div class="menu-2">
					<a href="index.php?page_layout=title-list" <?php echo $layout == "title-list" ? 'class="menu-active"': ''?>>list danh mục</a>
				</div>
			</div>
			<div class="menu-1">
				<span>tài khoản</span>
			</div>
			<div class="submenu <?php echo ($layout == "account-add" || $layout == "account-list") ? 'active': ''?>">
				<div class="menu-2">
					<a href="index.php?page_layout=account-add" <?php echo $layout == "account-add" ? 'class="menu-active"': ''?>>thêm mới tài khoản</a>
				</div>
				<div class="menu-2">
					<a href="index.php?page_layout=account-list" <?php echo $layout == "account-list" ? 'class="menu-active"': ''?>>danh sách tài khoản</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-10 body-right">
		<div class="row">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td><a href="index.php?page_layout=post-add"><img src="themes/images/icon-1.png"></a></td>
					<td width="78%"></td>
					<td><a href=""><img src="themes/images/icon-2.png"></a></td>
					<td><a href=""><img src="themes/images/icon-3.png"></a></td>
					<td><a href=""><img src="themes/images/icon-4.png"></a></td>
					<td><a href=""><img src="themes/images/icon-5.png"></a></td>
				</tr>
			</table>
		</div>
		<div class="row contain">
			<?php


				switch($layout){
					case 'post-add': include_once('post-add.php');
					break;

					case 'post-list': include_once('post-list.php');
					break;

					case 'post-edit': include_once('post-edit.php');
					break;

					case 'post-del': include_once('post-del.php');
					break;

					case 'post-title': include_once('post-title.php');
					break;

					case 'title-add': include_once('title-add.php');
					break;

					case 'title-edit': include_once('title-edit.php');
					break;

					case 'title-del': include_once('title-del.php');
					break;

					case 'title-list': include_once('title-list.php');
					break;

					case 'account-add': include_once('account-add.php');
					break;

					case 'account-list': include_once('account-list.php');
					break;

					case 'account-edit': include_once('account-edit.php');
					break;

					case 'account-del': include_once('account-del.php');
					break;

					default: include_once('info.php');					
				}
			?>
		</div>
		<div class="row footer">
			<?php
				$User = new user();
				$sql = "SELECT * FROM user WHERE email ='".$_SESSION["email"]."'";
				$User->query($sql);
				$row = $User->fetch();
			?>
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td width="60%"><a href=""><img src="themes/images/icon-6.png">Free admin template by Asif Aleem (freebiesgallery.com)</a></td>
					<td width="30%"><a href=""><img width="10%" src="themes/images/<?php echo $row['user_image']?>" class="ava-admin"><?php echo $row['user_name']?></a></td>
					<td><a href="index.php?page_layout=account-edit&user_id=<?php echo $row['user_id'] ?>"><img src="themes/images/icon-7.png"></a></td>
					<td><a href="logout.php"><img src="themes/images/icon-8.png"></a></td>
				</tr>
			</table>
		</div>
	</div>
</body>

</html>
<?php
}
?>