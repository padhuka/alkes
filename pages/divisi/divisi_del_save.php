<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_divisi = $_GET['id_divisi'];
		$sqlhapusdivisi = "DELETE FROM t_divisi WHERE id_divisi='$id_divisi'";
   		mysql_query( $sqlhapusdivisi );
?>
