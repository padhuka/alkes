<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_area = $_GET['id_area'];
		$sqlhapusarea = "DELETE FROM t_area WHERE id_area='$id_area'";
   		mysql_query( $sqlhapusarea );
?>
