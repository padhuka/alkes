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
                        case 'city' : include_once 'city/city_tab.php'; break;
                        case 'area' : include_once 'area/area_tab.php'; break;
                        case 'marketing' : include_once 'marketing/marketing_tab.php'; break;

                        case 'divisi' : include_once 'divisi/divisi_tab.php'; break;
                        case 'minor' : include_once 'minor/minor_tab.php'; break;
                        case 'mayor' : include_once 'mayor/mayor_tab.php'; break;
                        case 'group' : include_once 'group/group_tab.php'; break;
                        //======================================
                        case 'barang' : include_once 'barang/barang_tab.php'; break;
                        case 'customer' : include_once 'customer/customer_tab.php'; break;
                        case 'partnerbank' : include_once 'partnerbank/partnerbank_tab.php'; break;
                        case 'customer' : include_once 'customer/customer_tab.php'; break;
                        case 'kwitansi' : include_once 'kwitansi/kwitansi_tab.php'; break;
                        case 'rekapkwitansi' : include_once 'rekapkwitansi/rekapkwitansi_tab.php'; break;
                        case 'cash' : include_once 'cash/cash_tab.php'; break;
                        case 'bank' : include_once 'bank/bank_tab.php'; break;
                        case 'laporan' : include_once 'laporan/laporan_tab.php'; break;
                        ## BARANG ##
                        case 'sales' : include_once 'so/so_tab.php'; break;
                        case 'purchase' : include_once 'po/po_tab.php'; break;
                        case 'delivery' : include_once 'do/do_tab.php'; break;
                        case 'stock' : include_once 'stock/stock_tab.php'; break;
                        ## ORDER ##
                        case 'backup' : include_once 'backup/backup_tab.php'; break;
                        
                      }
        ?>

<?php include_once 'footer.php';?>


