<?php include 'includes/session.php'; ?>
<?php
	$conn = $pdo->open();

	$slug = $_GET['series'];

	try{
		 		
	    $stmt = $conn->prepare("SELECT *, series.name AS prodname, category.name AS catname, ott.name AS ottname, series.rating AS seriesrating, series.id AS prodid FROM series LEFT JOIN category ON category.id=series.category_id LEFT JOIN ott ON ott.id=series.ott_id WHERE slug = :slug");
	    $stmt->execute(['slug' => $slug]);
	    $series = $stmt->fetch();
		
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">

<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-offset-2 col-sm-8">
	        		<div class="callout" id="callout" style="display:none">
	        			<button type="button" class="close"><span aria-hidden="true">&times;</span></button>
	        			<span class="message"></span>
	        		</div>
		            <div class="row">
		            	<div class="col-sm-6">
		            		<img src="<?php echo (!empty($series['photo'])) ? 'images/'.$series['photo'] : 'images/noimage.jpg'; ?>" width="100%" class="zoom" data-magnify-src="images/large-<?php echo $series['photo']; ?>">
		            		<br><br>
		            		
		            	</div>
		            	<div class="col-sm-6">
		            		<h1 class="page-header"><?php echo $series['prodname']; ?></h1>
		            		<h3><b>Rating: <?php echo number_format($series['seriesrating'], 2); ?></b></h3>
		            		<p><b>Genre:</b> <a href="category.php?category=<?php echo $series['cat_slug']; ?>"><?php echo $series['catname']; ?></a></p>
		            		<p><b>Description:</b></p>
		            		<p><?php echo $series['description']; ?></p>
		            		<p><b>OTT :</b></p>
		            		<p><?php echo $series['ottname']; ?></p>
		            	</div>
		            </div>
		            <br>
				    
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>