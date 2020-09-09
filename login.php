<?php include 'includes/session.php'; ?>
<?php
  if(isset($_SESSION['user'])){
    header('location: index.php');
  }
?>
<?php include 'includes/header.php'; ?>
<!-- <img src="images/friends.jpg"> -->
<body class="hold-transition login-page"  style="background: url('images/pop.jpg') no-repeat fixed center; background-color: #000000; background-size: cover">
<div class="login-box" style="margin-top:300px; opacity=0.5
">
  	<?php
      if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
      }
      if(isset($_SESSION['success'])){
        echo "
          <div class='callout callout-success text-center'>
            <p>".$_SESSION['success']."</p> 
          </div>
        ";
        unset($_SESSION['success']);
      }
    ?>
  	<div class="login-box-body" style="
    background-color: transparent;
    opacity: 0.8;
">
    	<p class="login-box-msg" ></p>

    	<form action="verify.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="email" class="form-control" name="email" placeholder="Email" required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
      <br>
      <a href="signup.php" class="text-center" style="color: whitesmoke">Register a new membership</a><br>
      <a href="index.php" style="color: whitesmoke"><i class="fa fa-home" ></i> Home</a>
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>