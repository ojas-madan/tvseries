<header class="main-header">
  <nav class="navbar navbar-static-top">
    <div class="container">
      <div class="navbar-header">
            <img class="navbar-brand" style="height: 70px;width: 70px;" src="Icons/Logo.jpg">
        <a href="index.php" class="navbar-brand"><b>Watch</b>Next</a>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
          <i class="fa fa-bars"></i>
        </button>
      </div>
        
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        <ul class="nav navbar-nav">
        <?php 
            if(isset($_SESSION['user'])){
              ?>
          <li><a href="index.php">HOME</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">GENRE <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <?php
             
                $conn = $pdo->open();
                try{
                  $stmt = $conn->prepare("SELECT * FROM category");
                  $stmt->execute();
                  foreach($stmt as $row){
                    echo "
                      <li><a href='category.php?category=".$row['cat_slug']."'>".$row['name']."</a></li>
                    ";                  
                  }
                }
                catch(PDOException $e){
                  echo "There is some problem in connection: " . $e->getMessage();
                }

                $pdo->close();

              ?>
            </ul>

          </li>
          <li><a href="ott.php">OTT</a></li>
        </ul>
        <form method="POST" class="navbar-form navbar-left" action="search.php">
          <div class="input-group">
              <input type="text" class="form-control" id="navbar-search-input" name="keyword" placeholder="Search for Series" required>
              <span class="input-group-btn" id="searchBtn" style="display:none;">
                  <button type="submit" class="btn btn-default btn-flat"><i class="fa fa-search"></i> </button>
              </span>
          </div>
        </form>
      </div>
      <!-- /.navbar-collapse -->
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <?php
           
              echo '
                <li class="dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="hidden-xs">'.$user['firstname'].' '.$user['lastname'].'</span>
                  </a>
                  <ul class="dropdown-menu">
                    <li class="user-footer">
                      <div class="pull-right">
                        <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                      </div>
                    </li>
                  </ul>
                </li>
              ';
            }
            else{
              echo "
                <li><a href='login.php'>LOGIN</a></li>
                <li><a href='signup.php'>SIGNUP</a></li>
              ";
            }
          ?>
        </ul>
      </div>
    </div>
  </nav>
</header>