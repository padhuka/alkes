<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
      
        $tgltransaksi = trim($_POST['tgltransaksi']);
        $diterimadari = trim($_POST['diterima']);  
        $noref = trim($_POST['nokwitansi']); 
        $total = trim($_POST['nilai']); 
        $keterangan = trim($_POST['keterangan']); 
        
        $hrn2= date('dmy' , strtotime($hrini));
        $kodeawal2 = 'KM_MH.';
        $kodeawal = 'KM_MH.'.$hrn2.'.';
        $sqljur = "SELECT * FROM t_cash ORDER BY tgl DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['no_bukti'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['no_bukti'];
            $pecah = explode('.',$kode);
            $nilbaru = $pecah[2] + 1;
            $panj = strlen($nilbaru);
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

        
            $sqltbemp = "INSERT INTO t_cash (no_bukti,tgl_transaksi,diterima_dari,no_ref,total,keterangan) VALUES ('$kodebaru','$tgltransaksi','$diterimadari','$noref','$total','$keterangan')";
           // echo "$sqltbemp";
            mysql_query($sqltbemp);
            //echo $kodebaru.'-'.$warnanm;  

            $getIdSO = "SELECT do.fk_penjualan FROM t_kwitansi k 
            LEFT JOIN t_delivery_order do ON k.fk_delivery_order=do.id_delivery_order
            WHERE k.no_kwitansi='$noref'";
            $result = mysql_fetch_array(mysql_query($getIdSO));
            $so = $result['fk_penjualan'];
            $updatestatus = "INSERT INTO t_status_so (fk_penjualan,status) VALUES ('$so','LUNAS')";
            mysql_query($updatestatus);       
?>