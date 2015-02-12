<?php
include_once('admin/database.php');
class comment extends database{
	public function __construct(){
		
		$this->connect();
	}

	public function add($comment_name, $comment_email, $comment_detail, $comment_time, $post_id){
			$sql = "INSERT INTO comment(comment_name, comment_email, comment_detail, comment_time, post_id) 
					VALUES('".$comment_name."', '".$comment_email."', '".$comment_detail."', '".$comment_time."', '".$post_id."')";
			$this->query($sql);		
	}
	
	public function check($comment_name, $comment_email, $comment_detail){
		if($comment_name == '' || $comment_email == '' || $comment_detail == ''){
				$this->errors_check = "Nhập đầy đủ thông tin !";
				return true;			
		}
	}
}
?>