<?php
        include_once '../../lib/config.php';
		 //$ip = ; // Ambil IP Address dari User
    	$id_customer = trim($_POST['id_customer']);
        $id_customerhid = trim($_POST['id_customerhid']);
        $namacustomer = trim($_POST['namacustomer']);
        $alamatcustomer = trim($_POST['alamat']);
        $city = trim($_POST['city']);
        $noktpcustomer = trim($_POST['no_ktp']);
        $telpcustomer = trim($_POST['no_telp']);
        $email = trim($_POST['email']);
        $nonpwp = trim($_POST['npwp']);
	
        $sqlcek = "SELECT * FROM t_customer WHERE id_customer='$id_customer' AND id_customer<>'$id_customerhid";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);
        if ($row){
            echo 'y';
        }else{
		        $sqltbemp = "UPDATE t_customer SET nama='$namacustomer',alamat='$alamatcustomer',fk_city='$city',no_ktp='$noktpcustomer',no_telp='$telpcustomer',email='$email',npwp='$nonpwp' WHERE id_customer='$id_customerhid'";
                echo $sqltbemp;
        		mysql_query($sqltbemp);
           // echo 'n';
        }
?>