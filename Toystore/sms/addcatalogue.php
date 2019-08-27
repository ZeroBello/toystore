<?php
require_once './header.php';
if (isset($_POST['cName'])) {
    $cName = sanitizeString($_POST['cName']);
    $cDescription = sanitizeString($_POST['cDescription']);
    $error = $message = "";
    
        $uId = $_SESSION['uId'];
        $query = "INSERT INTO Catalogue(cName, cDescription, lastModifiedBy)"
                . "values('$cName' , '$cDescription', '$uId')";
        $result = queryMysql($query);
        if (!$result) {
            $error = "Adding error, please try again";
        } else {
            $message = "Added successfully";
        }    
}
?>
<br>
<form action = "addcatalogue.php" method = "post">
    <fieldset class = "fitContent">
        <legend>Add Catalogue</legend>
    
        Name<br>
        <input type="text" name="cName"   required /><br>
        Description<br>
        <textarea name="cDescription" ></textarea>
        <br><br>
        <input type="submit" value="Add" /><br>
       
    </fieldset>
    
</form>
</body>
</html>

