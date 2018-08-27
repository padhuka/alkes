<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_city = $_GET['id_city'];
		$sqlhapuscity = "DELETE FROM t_city WHERE id_city='$id_city'";
   		mysql_query( $sqlhapuscity );
?>
