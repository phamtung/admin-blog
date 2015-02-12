<?php
$post_id = $_GET['post_id'];
$Post = new post();
$sql = "SELECT * FROM post INNER JOIN title ON post.title_id = title.title_id WHERE post_id = ".$post_id;
$Post->query($sql);
$row = $Post->fetch();
?>

<div class="contain post-blog">
	<div class="row">
		<div class="col-md-1">
			<img src="admin/themes/images/<?php echo $row['title_image'];?>">
		</div>
		<div class="col-md-11 inf">
			<h4><?php echo $row['post_name'];?></h4>
			<span><?php echo $row['post_time'];?> Posted by <a href=""><?php echo $row['post_author'];?></a> in <a href=""><?php echo $row['title_name'];?></a></span>
		</div>
	</div>
	<div class="row im">
		<div class="col-md-12"><img width="100%" src="admin/themes/images/<?php echo $row['post_image'];?>"></div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<p><?php echo $row['post_detail'];?></p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="col-md-12 conn">
				<ul>
					<li><p>share</p></li>
					<li><a href="https://facebook.com"><img src="temp/themes/images/fb.png"></a></li>
					<li><a href="https://twitter.com"><img src="temp/themes/images/tw.png"></a></li>
					<li><a href="https://plus.google.com"><img src="temp/themes/images/gg.png"></a></li>
					<li><a href="https://instagram.com"><img src="temp/themes/images/in.png"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<?php
		include_once('temp/comment.php');
		$Comment = new comment();
		$sql = "SELECT * FROM comment WHERE post_id = ".$post_id;
		$Comment->query($sql);
		$count = $Comment->numRows();
	?>
	<div class="row comment">
		<div id="comment-list" class="col-md-12 comm-show">
			<H3><?php echo $count?> Comments</H3>
			<?php
				$sql = "SELECT * FROM comment WHERE post_id = ".$post_id." ORDER BY comment_id DESC LIMIT 0,4" ;
				$Comment->query($sql);
				while($rowc = $Comment->fetch()){
			?>
			<div class="comm">
				<div class="ava"><img src="temp/themes/images/com-img.png"></div>
				<div class="person">
					<p><span><?php echo $rowc['comment_name']?></span> - <?php echo $rowc['comment_time']?></p>
				</div>
				<div class="detail">
					<?php echo $rowc['comment_detail']?>
				</div>
			</div>
			<?php
				}
			?>
		</div>
		<?php
			date_default_timezone_set('Asia/Bangkok');
			if(isset($_POST['submit'])){
			    $comment_name = isset($_POST["comment_name"]) ? $_POST["comment_name"] : '';
			    $comment_email = isset($_POST["comment_email"]) ? $_POST["comment_email"] : '';
			    $comment_detail = isset($_POST["comment_detail"]) ? $_POST["comment_detail"] : '';
			    $comment_time = date('d/m/Y H:i:s');  
			    if($Comment->check($comment_name, $comment_email, $comment_detail) == true){
			        $error = $Comment->errors_check;
			    }
			    else{
			        $Comment->add($comment_name, $comment_email, $comment_detail, $comment_time, $post_id);
			        echo '	<script>
					        	window.location.href = "index.php?page_layout=post-blog&post_id='.$post_id.'#comment-list";
					        </script>';
			    }
			    
			}
			
		?>
		<div class="col-md-12 comm-post">
			<?php if(isset($error)){echo $error;}?>
			<H3>Leave a comment</H3>
			<form width="200px" method="post" enctype="multipart/form-data">
		        <input type="text" name="comment_name" /><label>Name</label><br />      
		        <input type="email" name="comment_email" /><label>Email</label><br />
		        <textarea name="comment_detail"></textarea></br>
		        <div class = "but-com"><input type="submit" name="submit" value=''/></div>
		    </form>
		</div>
	</div>
</div>