<!DOCTYPE html>
<html>
    <head>
        <title>XzeroShop</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>

            wapper{
                width: 100%;
                height: auto;
                margin: auto;
            }
            
            .container{
                width: 100%;
                height: auto;
                margin: auto;
                   
            }
            .header{
                width: 100%;
                height: 350px;                 
            }
            .header img{
                width: 100%;
                float: left;                                                  
            }
            .footer{
                width: 100%;
                height: auto;
                border: 1px solid #000;
            }                               
            .image{
                width: 100%;
                float: left;                
            }
            .image img{
                width: 100%;
            }
            .detail{
                width: 100%;
                float: left;
            }
            .title{
                background-color: white;
                font-size: 40px;
                line-height: 30px;
                padding-left: 10px;
                text-align: center;  
                color: red;
                font-family:  family;
            }
            .detail{
                padding-left: 15px;
                box-sizing: border-box;
            }
            .des{
                color: black;
                font-size: 18px;
                padding-left: 10px;
                padding-top: 10px;
                text-align: center
            }
            .seperator{
                clear: left;
                color: #F8DE4F;
                padding-left: 20px;
                padding-top: 10px;
            }
            .list{
                width: 100%;
                padding-right: 10px;
                float: left;              
            }
            .item{
                width: 320px;
                height: 300px;
                float: left;
                padding: 5px;             
                border: 1px solid #000;
                text-align: center;                          
            }
            .iimage img{
                width: 170px;
                height : 200px;
            }
            .ititle{
                background-color: blueviolet;
                font-size: 18px;
                line-height: 25px;
                padding: 5px 10px;
                border: 1px solid #000;
                text-align: center;
            }
            .ides{
                background-color: white;
                padding: 5px 10px;
            }
            .idetail{
                background-color: white;
                overflow: hidden;
                text-align: center;
            }
            .buttondetail{
                width: 100px;
                background-color:white;
                float:left;
                line-height: 25px;
                text-align: center;
                border-radius: 5px;
            }             
            .banner{
                width: 100%;
                height: 200px;
               
            }
            .banner img{
                width: 100%;
            }
            .nav{
                width: 100%;
                height: 50px; 
                list-style: none;
                
            }
            .nav ul{
                margin-left: 2px;
                padding: 0;
                list-style: none;
            }
            .nav a{
                color:black;
                font-size: 30px;
                text-decoration: wavy;
                line-height: 50px;
                padding: 0 15px;
                display: block;
            }
            .nav li{
                float: left;
            }
            .nav a:hover{
                color: #cccc00;
            }
            .nav li:hover{
                background-color:white;
                border: 1px solid #000;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <?php
require_once './functions.php';
$query = "SELECT iId, iName, iDescription, iPrice, iStatus, iSize, iImage FROM Item ";
$result = queryMysql($query);
$error = $msg = "";
if (!$result){
    $error = "Couldn't load data, please try again.";
}
?>
        <div class="container">         
            <div class="header">
                <img src="images/item/banner.jpg" width="=100%" height="100%" />  
               <div class="menu">   
                    
               </div>                                       
                 <div class="banner"></div>                 
                <div class="nav">
                    <li class="selected"><a href="index.php">Home</a></li>
                    <li><a class="w3-display-right w3-orange" href="login.php" style="margin-top:25px;">Admin</a></li>  
                    <li class="selected"><a href="login.php">Login</a></li>
                </div>
            </div>
            <div class="main">               
                <div class="hot">
                    <div class="image">
                        <img src="images/Phone.jpg" alt="">
                    </div>
                    <div class="detail">
                        <div class="title">
                            X-ZeroToy Shop
                        </div>
                        <div class="des">
                            Figure Toy Paridise
                        </div>
                    </div>
                </div>
                <div class="seperator">
                </div>
                <div class="list">
                    <?php
     require_once './functions.php';
     $query = "SELECT iId, iName, iDescription, iPrice, iStatus, iSize, iImage,cName FROM Item,Catalogue ORDER BY cName";
     $result = queryMysql($query);
     $error = $msg = "";
     if (!$result){
      $error = "Couldn't load data, please try again.";
     }
     while ($row = mysqli_fetch_array($result)) {
        $iId = $row[0];
        $iName = $row[1];
        $iDescription = $row[2];
        $iPrice = $row[3];
        $iStatus = $row[4];
        $iSize = $row[5];
        $iImage = $row[6];
        
        echo "<div class='sp w3-quarter w3-card w3-center ' ><div class='w3-orange w3-padding-large'>$iStatus</div><div ><img onclick=\"document.getElementById('$iName').style.display='block'\" id='testimg' src='./images/item/". $iImage . "' width='100%'></div><div class='name'><h3>$iName</h3></div><h3>$iPrice$</h3></div>"
                . "<!--SHOW MORE INFORMATION-->
  <div id='$iName' class='w3-modal'>
      <div class='w3-modal-content w3-animate-top w3-card-4'>
        <div class='w3-container w3-orange w3-center w3-padding-20'> 
          <span onclick=\"document.getElementById('$iName').style.display='none';\"
         class='w3-button w3-red w3-xlarge w3-display-topright'>×</span>
          <h2>$iName</h2>
        </div>
        <div class='w3-container w3-row'>
          <div class='w3-half'>
              <img src='./images/item/". $iImage . "' width='100%'>
          </div>
          <div class='w3-half w3-left'>
              <h3>Price: $iPrice $</h3>
              <p>Description: $iDescription.</p>
              <h4>Size: $iSize</h4>                           
          </div>                                                    
        </div>
        <button class='w3-button w3-Black w3-section' onclick=\"document.getElementById('$iName').style.display='none';\">Back <i class='fa fa-remove'></i></button>
      </div>
    </div>";                                                                                       
    }
?>

                    

                    
              </div>
                
            </div>
            <div class="splitter"></div>
        <ul>     

        <div class="bar">
            <div class="bar-wrap">
                <ul class="links"> 
                    <li><a href="#">Home</a></li>
                    <li><a href="#">License</a></li>
                    <li><a href="#">Advertise</a></li>
                    <li><a href="#">About</a></li>
                    <h3 style="color: black;text-align: center">Contact: 0965651999</h3>
                    
                </ul>
 
                <div class="social">                   
                </div>
                <div class="clear"></div>
                <div class="copyright">&copy;  2018 All Rights Reserved</div>
            </div>
        </div>
            
           
          
            </div>
        </div>
    </body>
</html>

