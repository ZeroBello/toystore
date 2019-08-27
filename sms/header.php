<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/menu_style.css?v=<?php echo time();?>" type="text/css"/>
        <link rel="stylesheet" href="css/style.css?v=<?php echo time();?>" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Shoes Management System</title>
    </head>

    <body>
    <center><img style="width: 1500px;height:500px;" src="images/item/banner.jpg"</center>
    <li class="selected"><a href="index.php">Home</a></li>
    <?php
    require_once './functions.php';
    $userstr = '(Guest)';
    if (isset($_SESSION['user'])) {
        $user = $_SESSION['user'];
        $userstr = "($user)";
        $loggedin = TRUE;
    } else {
        $loggedin = FALSE;
    }
    if ($loggedin) {
        include_once './menu_admin.php';
    } else {
        include_once './menu_guest.php';
    }
    ?>
</body>
</html>

