<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
         //$ip = ; // Ambil IP Address dari User
        //$id_penjualan = trim($_POST['id_penjualan']);
        $customer = trim($_POST['customer']);;
        $tgltransaksi = trim($_POST['tgltransaksi']);
        $keterangan = trim($_POST['keterangan']);
        $marketing = trim($_POST['marketing']);
        
        //message_back($id_penjualan);
        //$kodeawal = 'est_'.$hrini.'_';
        $hrn2= date('dmy' , strtotime($hrini));
  //EST.BR.020818.000001
        $kodeawal2 = 'SO_NAM.';
        $kodeawal = 'SO_NAM.'.$hrn2.'.';
        //$sqljur = "SELECT * FROM t_penjualan WHERE id_penjualan LIKE '$kodeawal%' ORDER BY id_penjualan DESC";
        $sqljur = "SELECT * FROM t_penjualan ORDER BY tgl DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['id_penjualan'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['id_penjualan'];
            $pecah = explode('.',$kode);
            $nilbaru = $pecah[2] + 1;
            $panj = strlen($nilbaru);
            //message_back($panj);
            switch($panj){
                default : break;
                case '1' : $kodeakhir='00000'.$nilbaru; break;
                case '2' : $kodeakhir='0000'.$nilbaru; break;
                case '3' : $kodeakhir='000'.$nilbaru; break;
                case '4' : $kodeakhir='00'.$nilbaru; break;
                case '5' : $kodeakhir='0'.$nilbaru; break;
                case '6' : $kodeakhir=$nilbaru; break;
            }
        }
        
        $kodebaru = $kodeawal.$kodeakhir;     

        
            $sqltbemp = "INSERT INTO t_penjualan (id_penjualan,tgl_transaksi,fk_customer,fk_marketing,keterangan) VALUES ('$kodebaru','$tgltransaksi','$customer','$marketing','$keterangan')";
            mysql_query($sqltbemp);
            echo $kodebaru; 

             $sqlstatus= "INSERT INTO t_status_so(fk_penjualan) VALUES ('$kodebaru')";
                mysql_query($sqlstatus);       
?>