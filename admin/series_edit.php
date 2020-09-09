<?php
	include 'includes/session.php';
	include 'includes/slugify.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$slug = slugify($name);
		$category = $_POST['category'];
		$rating = $_POST['rating'];
		$description = $_POST['description'];
		$ott=$_POST["ott"];

		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE series SET name=:name, slug=:slug, ott_id=:ott, category_id=:category, rating=:rating, description=:description WHERE id=:id");
			$stmt->execute(['name'=>$name, 'slug'=>$slug,'ott'=>$ott, 'category'=>$category, 'rating'=>$rating, 'description'=>$description, 'id'=>$id]);
			$_SESSION['success'] = 'Series updated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Fill up edit Series form first';
	}

	header('location: series.php');

?>