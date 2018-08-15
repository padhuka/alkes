<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
         //$ip = ; // Ambil IP Address dari User
        //$id_delivery_order = trim($_POST['id_delivery_order']);
        $idso = trim($_POST['idso']);
        //message_back($id_delivery_order);
        //$kodeawal = 'est_'.$hrini.'_';
        $hrn2= date('dmy' , strtotime($hrini));
  //EST.BR.020818.000001
        $kodeawal2 = 'DO_BR.';
        $kodeawal = 'DO_BR.'.$hrn2.'.';
        $sqljur = "SELECT * FROM t_delivery_order WHERE id_delivery_order LIKE '$kodeawal2%' ORDER BY id_delivery_order DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['id_delivery_order'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['id_delivery_order'];
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

            $sqlest = "SELECT * FROM t_penjualan WHERE id_penjualan='$idso'";
            $hest= mysql_fetch_array(mysql_query($sqlest));


            $sqltbemp = "INSERT INTO t_delivery_order (id_delivery_order,fk_customer,fk_penjualan,total_gross_jual_barang,total_diskon_jual_barang,total_netto_jual_barang) VALUES ('$kodebaru','$hest[fk_customer]','$hest[id_penjualan]','$hest[total_gross_jual_barang]','$hest[total_diskon_jual_barang]','$hest[total_netto_jual_barang]')";
            mysql_query($sqltbemp);
            echo $sqltbemp;
            //echo $kodebaru.'-'.$warnanm;
            //insert panel pkb
            
            $sqlpanelest="SELECT * FROM t_penjualan_detail WHERE fk_penjualan='$idso'";
            $qpanelest=mysql_query($sqlpanelest);
            while($hpanelest=mysql_fetch_array($qpanelest)){

                $sqlpanelpkb = "INSERT INTO t_delivery_order_detail (fk_delivery_order,fk_barang,gross_jual_barang,diskon_jual_barang,netto_jual_barang,qty) VALUES ('$kodebaru','$hpanelest[fk_barang]','$hpanelest[gross_jual_barang]','$hpanelest[diskon_jual_barang]','$hpanelest[netto_jual_barang]','$hpanelest[qty]')";
                mysql_query($sqlpanelpkb);

            }

            
        
?>