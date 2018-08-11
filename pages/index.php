<?php include_once 'header.php';?>
<?php include_once 'header_menu.php';?>
        <?php
            if(!empty($_GET["p"])){
                $pag = $_GET["p"];}else{
                    $pag="";
                }
                //echo $h;
                switch($pag){
                        default : include_once 'middle.php'; break;
                        ## AREA ##
                        case 'supplier' : include_once 'supplier/supplier_tab.php'; break;
                        case 'satuan' : include_once 'satuan/satuan_tab.php'; break;
                        case 'barang' : include_once 'barang/barang_tab.php'; break;
                        case 'customer' : include_once 'customer/customer_tab.php'; break;
                        case 'partnerbank' : include_once 'partnerbank/partnerbank_tab.php'; break;
                        case 'customer' : include_once 'customer/customer_tab.php'; break;
                        case 'kwitansi' : include_once 'kwitansi/kwitansi_tab.php'; break;
                        case 'cash' : include_once 'cash/cash_tab.php'; break;
                        case 'bank' : include_once 'bank/bank_tab.php'; break;
                        case 'laporan' : include_once 'laporan/laporan_tab.php'; break;
                        ##BARANG##
                        case 'sales' : include_once 'so/so_tab.php'; break;
                      }
        ?>

<?php include_once 'footer.php';?>


