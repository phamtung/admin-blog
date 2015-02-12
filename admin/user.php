<?php
include_once('database.php');
class user extends database{
	
	protected $user_id;
	protected $email;
	protected $password;
	protected $user_name;
	public $errors;

	public function __construct(){
		
		$this->connect();
	}
	
	public function login($email, $password){
		$email = $this->fix($email);
		$password = $this->fix(md5($password));

		$sql = "SELECT * FROM user 
				WHERE email ='".$email."' AND password = '".$password."'";
				
		$this->query($sql);
		if($this->numRows() > 0){
			$_SESSION["email"] = $email;
			$_SESSION["password"] = $password;
			return true;
		}
		else{
			$this->errors = 'Không đúng tài khoản hoặc mật khẩu !';
			return false;
		}
	}

	public function add($email, $user_image, $address, $password, $user_name){
		$sql = "SELECT email FROM user WHERE email = '".$email."'";
		$this->query($sql);
		if($this->numRows() > 0){
			$this->errors = "Tài khoản đã tồn tại !!";
			return true;
		}
		else{
			$sql = "INSERT INTO user (email, user_image, address, password, $user_name) 
					VALUES ('".$email."', '".$user_image."', '".$address."', '".md5($password)."', '".$user_name."')";
			$this->query($sql);
		}
	}

	public function fix($str) {
		return str_replace("'", "\'", $str);
	}

	public function del($user_id){
		$sql = "DELETE FROM user WHERE user_id = ".$user_id."";
		$this->query($sql);
	}
	
	public function check($email, $password){
		if($email == '' && $password == ''){
				$this->errors_check = "Nhập đầy đủ thông tin !";
				return true;			
		}
	}
	
	public function edit($user_id, $email, $user_image, $address, $password, $user_name){
		$sql = "SELECT * FROM user WHERE email = '".$email."' AND user_id != ".$user_id;
		$this->query($sql);
		if($this->numRows() > 0){
			$this->errors_rep = "Tài khoản đã tồn tại";
			return true;
		}
		else {
			$sql = "UPDATE user SET email 		= 	'".$email."', 
									user_image 	= 	'".$user_image."',
									address 	= 	'".$address."',
									password 	= 	'".md5($password)."',
									user_name 	= 	'".$user_name."'
					WHERE user_id = ".$user_id;
			$this->query($sql);	
		}
	}				
}