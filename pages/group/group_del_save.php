<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_group = $_GET['id_group'];
		$sqlhapusgroup = "DELETE FROM t_group WHERE id_group='$id_group'";
   		mysql_query( $sqlhapusgroup );
?>
