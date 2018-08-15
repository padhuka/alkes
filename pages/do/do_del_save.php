<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
        $iddo = $_GET['iddo'];        
            $updatepkb = "UPDATE t_delivery_order SET tgl_batal='$hrini' WHERE id_delivery_order='$iddo'";
            mysql_query($updatepkb);
?>
