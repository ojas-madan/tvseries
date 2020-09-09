<header class="main-header">
  <!-- Logo -->
  <a href="#" class="logo">
    
    
    <span class="logo-mini"><b>W</b>N</span>
    <img src="../Icons/favicon-96x96.png">
    <span class="logo-lg"><b>Watch</b>Next</span>
  </a>
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>

    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- User Account: style can be found in dropdown.less -->
   <!--      <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            
            <span class="hidden-xs"><?php //echo $admin['firstname'].' '.$admin['lastname']; ?></span>
          </a>
          <ul class="dropdown-menu">
            
            <li class="user-footer">
              <div class="pull-right">
                <a href="#profile" data-toggle="modal" class="btn btn-default btn-flat" id="admin_profile">Update</a>
              </div>
              <div class="pull-right">
                <a href="../logout.php" class="btn btn-default btn-flat">Sign out</a>
              </div>
            </li>
          </ul>
        </li> -->
            <li role="presentation" class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-
        haspopup="true" aria-expanded="false"> <?php echo $admin['firstname'].' '.$admin['lastname']; ?> <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
            <li><a href="#profile" data-toggle="modal"  id="admin_profile">Update</a></li>
            <li><a href="../logout.php" >Sign out</a></li>
        </ul>
    </li> 
      </ul>
    </div>
  </nav>
</header>
<?php include 'includes/profile_modal.php'; ?>