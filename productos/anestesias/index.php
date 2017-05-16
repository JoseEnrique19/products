<?php
       $db_host = "gzp0u91edhmxszwf.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
       $db_name = "h0vu9ni4el813k37";
       $db_user = "kwcpfy9dd1nn1pxw";
       $db_password = "h72sziiyzpjig20g";
       $connection = mysqli_connect($db_host, $db_user, $db_password) or die("Connection Error: " . mysqli_error());
        mysqli_select_db($connection, $db_name) or die("Error al seleccionar la base de datos:".mysqli_error());
          @mysqli_query("SET NAMES 'utf8'");
    $sql_query = "SELECT * FROM productos where tipo=1000";
    $result = mysqli_query($connection, $sql_query);
    $rows = array();
while($r = mysqli_fetch_assoc($result)) {
  $rows[] = $r;
}
print json_encode($rows);
?>
