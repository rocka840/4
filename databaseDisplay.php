<?php
session_start();
if(!isset($_SESSION["UserLoggedIn"])){
    $_SESSION["UserLoggedIn"] = false;
}

$servername = "localhost";
$username = "root";
$password = "";
$dbName = "DB_4";

$connection = mysqli_connect($servername, $username, $password, $dbName);

if(!$connection){
    die("Connection failed: " . mysqli_connect_error());
}
?>


<?php
include_once("repif_db.php");

$sql = $connection->prepare("SELECT * from users");
$sql->execute();
$result = $sql->get_result();

while($row=$result->fetch_assoc()){
    print $row;
}

?>