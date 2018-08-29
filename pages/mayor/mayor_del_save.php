<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_mayor = $_GET['id_mayor'];
		$sqlhapusmayor = "DELETE FROM t_mayor WHERE id_mayor='$id_mayor'";
   		mysql_query( $sqlhapusmayor );
?>
