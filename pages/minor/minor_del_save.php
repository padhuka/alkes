<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_minor = $_GET['id_minor'];
		$sqlhapusminor = "DELETE FROM t_minor WHERE id_minor='$id_minor'";
   		mysql_query( $sqlhapusminor );
?>
