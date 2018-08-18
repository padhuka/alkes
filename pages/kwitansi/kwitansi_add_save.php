<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';

        $id_delivery_order = trim($_POST['iddo']);
     
        $hrn2= date('dmy' , strtotime($hrini));
        $kodeawal2 = 'SI_BR.';
        $kodeawal = 'SI_BR.'.$hrn2.'.';
        $sqljur = "SELECT * FROM t_kwitansi WHERE no_kwitansi LIKE '$kodeawal2%' ORDER BY no_kwitansi DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['no_kwitansi'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['no_kwitansi'];
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

         $sqlest = "SELECT * FROM t_delivery_order WHERE id_delivery_order='$id_delivery_order'";
         $hsl= mysql_fetch_array(mysql_query($sqlest));
            $grosstotal = $hsl['total_gross_jual_barang'];
            $diskontotal = $hsl['total_diskon_jual_barang'];
            $nettototal = $hsl['total_netto_jual_barang'];

            $ppn = $nettototal*10/100;
            $payment = $nettototal+$ppn;

        
        $sqltbemp = "INSERT INTO t_kwitansi (no_kwitansi,fk_delivery_order,total_gross_barang,total_diskon_barang,total_netto_barang,total_ppn_kwitansi,total_kwitansi) VALUES ('$kodebaru','$id_delivery_order','$grosstotal','$diskontotal','$nettototal','$ppn','$payment')";
        //echo $sqltbemp;
            mysql_query($sqltbemp);
         
        
?>