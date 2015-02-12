				<?php
					$cat_id = $_GET['cat_id'];
					$Post = new post();
					$sql = "SELECT * FROM post INNER JOIN title ON post.title_id = title.title_id ORDER BY post_id DESC WHERE title_id=".$cat_id;
					$Post->query($sql);
					while($row = $Post->fetch()){
				?>
				<div class="post">
					<div class="col-md-1">
						<div class="time">
							<img src="a">
						</div>
						<div class="img-title">
							<img src="admin/themes/images/<?php echo $row['title_image'];?>">
						</div>
					</div>
					<div class="col-md-11">
						<div class="img">
							<a href="index.php?page_layout=post-blog&post_id=<?php echo $row['post_id'];?>"><img src="admin/themes/images/<?php echo $row['post_image'];?>"></a>
						</div>
						<div class="contain">
							<h4><a href="index.php?page_layout=post-blog&post_id=<?php echo $row['post_id'];?>"><?php echo $row['post_name'];?></a></h4>
							<span>Posted by <a href=""><?php echo $row['post_author'];?></a> in <a href=""><?php echo $row['title_name'];?></a></span>
							<?php
								include_once('temp/comment.php');
								$sql = "SELECT comment_id FROM comment WHERE post_id=".$row['post_id'];
								$Comment = new comment();
								$Comment->query($sql);
								$count = $Comment->numRows();
							?>
							<img src="temp/themes/images/comm.png"><a href=""><?php echo $count;?></a>
							<p><?php echo substr($row['post_detail'],0,1000)."...";?></p>
							<a href="index.php?page_layout=post-blog&post_id=<?php echo $row['post_id'];?>">Continue reading -></a>
						</div>
					</div>
				</div>
				<?php
					}
				?>
			