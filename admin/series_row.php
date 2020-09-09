<?php 
	include 'includes/session.php';

	if(isset($_POST['id'])){
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, series.id AS prodid, series.name AS prodname, category.name AS catname, ott.name AS ottname  FROM series LEFT JOIN category ON category.id=series.category_id LEFT JOIN ott ON ott.id=series.ott_id WHERE series.id=:id");
		$stmt->execute(['id'=>$id]);
		$row = $stmt->fetch();


		echo json_encode($row);
	}
?>