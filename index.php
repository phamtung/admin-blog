<?php
	function __autoload($class){
		include_once "admin/$class.php";
	}
	error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
	$layout = $_GET['page_layout'];
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blog </title>
<link rel="stylesheet" type="text/css" href="temp/themes/css/style.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<!-- Bootstrap CSS -->
<link href="admin/themes/css/bootstrap.min.css" rel="stylesheet" >
 
</head>

<body>	
	<div class="menu-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<img src="temp/themes/images/logo.png">
				</div>
				<div class="col-md-1 <?php echo $layout == "home" ? 'menu-active': ''?>">
					<a href="index.php"><div class="item-menu">
						home
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "about" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=about"><div class="item-menu">
						about
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "services" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=services"><div class="item-menu">
						services
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "portfolio" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=portfolio"><div class="item-menu">
						portfolio
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "blog" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=blog"><div class="item-menu">
						blog
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "features" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=features"><div class="item-menu ">
						features
					</div></a>
				</div>
				<div class="col-md-1 <?php echo $layout == "contacts" ? 'menu-active': ''?>">
					<a href="index.php?page_layout=contacts"><div class="item-menu">
						contacts
					</div></a>
				</div>
				<div class="col-md-1 x">
					<div class="item-menu find">
						<input type="button" name="search" class="b1">
						<div class="search">
							<input type="text" placeHolder="Search the site">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="info-header">
		<div class="container">
			<div class="row">		
				<div class="col-md-10">
					<?php if(isset($layout)){echo $layout;}else{echo 'home';}?>
				</div>
				<div class="col-md-2">
					<a href="index.php">home </a>
					<?php echo '/ '.$layout;?></a>
				</div>
			</div>
		</div>
	</div>

		<!-- end header -->

	<div class="container">
		<div class="row">
			<div class="col-md-9">
			<?php
				switch($layout){
					case 'about': include_once('temp/about.php');
					break;

					case 'services': include_once('temp/services.php');
					break;

					case 'portfolio': include_once('temp/portfolio.php');
					break;

					case 'blog': include_once('temp/blog.php');
					break;

					case 'post-blog': include_once('temp/post-blog.php');
					break;

					case 'features': include_once('temp/features.php');
					break;

					case 'contacts': include_once('temp/contacts.php');
					break;
					
					case 'category': include_once('temp/category.php');
					break;

					default: include_once('temp/info.php');					
				}
			?>
			</div>

			<!-- body-left -->

			<div class="col-md-3">
				<div class="box cat">
					<span>categories</span>
					<ul>
					<?php
						$Title = new title();
						$sql = "SELECT * FROM title";
						$Title->query($sql);
						while($row = $Title->fetch()){
					?>
						<li><a href="index.php?page_layout=category&cat_id=<?php echo $row['title_id']?>"><img src="temp/themes/images/icon-cat.png"><?php echo $row['title_name']?></a></li>
					<?php
						}
					?>
					</ul>
				</div>

				<!-- categories -->

				<div class="box">
					<span>recent posts</span>
					<ul>
						<li><a href="">empty</a></li>
					</ul>
				</div>
				<div class="box">
					<span>archive</span>

				</div>
			</div>

			<!-- body-right -->

		</div>
	</div>

	<!-- end body -->

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 ft1">
					<img src="temp/themes/images/logo.png">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec .</p>
					<div class="row line">	
						<div class="col-md-2">Phone:</div><div class="col-md-10"><b>182 2569 5896</b></div>
					</div>
					<div class="row line">
						<div class="col-md-2">email:</div><div class="col-md-10"><b>info@modu.versus</b></div>
					</div>
				</div>
				<div class="col-md-2 ft2">
					<p>Company</p>
					<ul>
						<li><a href="">About</a></li>
						<li><a href="">FAQ</a></li>
						<li><a href="">Contact</a></li>
						<li><a href="">Term</a></li>
						<li><a href="">Privacy</a></li>
						<li><a href="">Testimonials</a></li>
					</ul>
				</div>
				<div class="col-md-2 ft2">
					<p>Community</p>
					<ul>
						<li><a href="">Blog</a></li>
						<li><a href="">Forum</a></li>
						<li><a href="">Support</a></li>
						<li><a href="">Newsletter</a></li>
					</ul>
				</div>
				<div class="col-md-4 ft3">
					<p>from the <b>blog</b></p>
					<div class="blog-1">
						<div class="bl-left"><img src="temp/themes/images/img1.png"></div>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit</br>
						<span>26 May, 2013</span>
					</div>
					<div class="clear"></div>
					<div class="blog-1">
						<div class="bl-left"><img src="temp/themes/images/img1.png"></div>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit</br>
						<span>26 May, 2013</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer2">
		<div class="container">
			<div class="col-md-9">
				<span>2013  ModusVersus</span>
			</div>
			<div class="col-md-3 ft-2">
				<ul>
					<li><a href=""><img src="temp/themes/images/link4.png"></a></li>
					<li><a href=""><img src="temp/themes/images/link3.png"></a></li>
					<li><a href=""><img src="temp/themes/images/link2.png"></a></li>
					<li><a href=""><img src="temp/themes/images/link1.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>