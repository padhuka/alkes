<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
   
     
        $keterangan = trim($_POST['keterangan']);

        $hrn2= date('dmy' , strtotime($hrini));

        $kodeawal2 = 'RK_MH.';
        $kodeawal = 'RK_MH.'.$hrn2.'.';

        $sqljur = "SELECT * FROM t_rekapkwitansi WHERE id_rekapkwitansi LIKE '$kodeawal2%' ORDER BY id_rekapkwitansi DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['id_rekapkwitansi'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['id_rekapkwitansi'];
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

        
            $sqltbemp = "INSERT INTO t_rekapkwitansi (id_rekapkwitansi,keterangan) VALUES ('$kodebaru','$keterangan')";
            mysql_query($sqltbemp);
            echo $kodebaru;        
?>