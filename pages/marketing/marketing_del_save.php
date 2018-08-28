<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_marketing = $_GET['id_marketing'];
		$sqlhapusmarketing = "DELETE FROM t_marketing WHERE id_marketing='$id_marketing'";
   		mysql_query( $sqlhapusmarketing );
?>
