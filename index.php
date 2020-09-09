<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 

      <img src="images/1.png" style="padding-left: 220px" >

	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-8 col-lg-12">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	  
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="https://www.socialfish.org/wp-content/uploads/2019/10/The-Best-Streaming-Entertainment-1000x585.jpg" alt="First slide"  style="height:450px;width:1200px;" >
		                  </div>
		                  <div class="item">
		                    <img src="./images/1.jpg" alt="Second slide"  style="height:450px;width:1200px;" >
		                  </div>
		                  <div class="item">
		                    <img src="https://cdn.shortpixel.ai/client/to_webp,q_lossy,ret_img,w_650/https://www.shubz.in/wp-content/uploads/2020/04/best-tv-series-to-binge-watch.png" alt="Third slide"  style="height:450px;width:1200px;">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
		            <br>
		            <br>
		            <h1>The Best TV Shows to Binge Watch</h1>
		            <br>
		            <p style="font-size:25px;">Struggling with what to watch next tonight? Look no further than the <strong>Watch</strong>Next guide to the best TV shows till now.Updated weekly.</p>
		            <br>
		            <br>
		       		  <?php 
            if(isset($_SESSION['user'])){
              ?>
		       		 <div class="row">
        <div class="col-xs-12">
          <div class="box">
            
            <div class="box-body">
            	<h3>Awards Won By Must Watch TV Shows</h3>
              <table id="example1" class="table table-bordered">
                <thead>
                  <th>Name</th>
                  <th>Golden Globe Awards</th>
                  <th>Emmy Awards</th>	
                  <th>Total Awards and Nominations</th>
                </thead>
                <tbody>
                  <?php
                    $conn = $pdo->open();

                    try{
                      $now = date('Y-m-d');
                      $stmt = $conn->prepare("SELECT * FROM awards");
                      $stmt->execute();
                      foreach($stmt as $row){
                        echo "
                          <tr>
                            <td>" .$row['name']. "</td>
                            <td>" .$row['gg']. "</td>
          					<td>" .$row['emmy']. "</td>
          					<td>" .$row['info']. "</td>
                          </tr>
                        ";
                      }
                    }
                    catch(PDOException $e){
                      echo $e->getMessage();
                    }

                    $pdo->close();
                  ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
    <?php } ?>
      </div>
	        	</div>
	        </div>

	      </section>
	     
	    </div>
	  </div>
  
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>