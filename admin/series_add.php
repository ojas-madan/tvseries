<?php
	include 'includes/session.php';
	include 'includes/slugify.php';

	if(isset($_POST['add'])){
		$name = $_POST['name'];
		$slug = slugify($name);
		$category = $_POST['category'];
		$rating = $_POST['rating'];
		$description = $_POST['description'];
		$filename = $_FILES['photo']['name'];
		$ott=$_POST["ott"];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM series WHERE slug=:slug");
		$stmt->execute(['slug'=>$slug]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			$_SESSION['error'] = 'Series already exist';
		}
		else{
			if(!empty($filename)){
				$ext = pathinfo($filename, PATHINFO_EXTENSION);
				$new_filename = $slug.'.'.$ext;
				move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$new_filename);	
			}
			else{
				$new_filename = '';
			}

			try{
				
				$stmt = $conn->prepare("INSERT INTO series (category_id, name, description, slug, rating, photo) VALUES (:category, :name, :description, :slug, :rating, :photo)");
				$stmt->execute(['category'=>$category, 'name'=>$name, 'description'=>$description, 'slug'=>$slug, 'rating'=>$rating, 'photo'=>$new_filename]);
				$_SESSION['success'] = 'User added successfully';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Fill up series form first';
	}

	header('location: series.php');

?>