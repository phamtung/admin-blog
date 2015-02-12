<?php
	include('user.php');
	$user_id = $_GET['user_id'];
	$User = new User();
	$User->del($user_id);
	header("location:index.php?page_layout=account-list");
?>

