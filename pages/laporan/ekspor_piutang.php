<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=reportcash.xls");
 
// Tambahkan table
//include 'data.php';

?>
								      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table width="100%" align="center" border="0">
                                  <tr>
                                    <td width="50%"><u style="font-size: 20px;"><strong>PT. MH Medika</strong><br>
                                    </u>
                                      Jl. Sumbing Rt.03 Rw.09 Mojosongo<br>
                                      Surakarta Tlp. 0271-9224110, 081229875951<br>
                                    </td>                                   
                                  </tr>                                   
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan Piutang</center></span>
                                <br>
      <table id="tablepkb1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No DO</th>
                          <th>Tanggal DO</th>
                          <th>Nama Customer</th>
                          <th>Piutang</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   //WHERE p.tgl_batal='0000-00-00 00:00:00' AND p.status_pkb='' AND substring(tgl,1,10)>='$tgl1' AND  substring(tgl,1,10)<='$tgl2' 
                                   
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                    $jml=0;
                                    $sqlcatat = "SELECT p.*,c.nama,k.no_kwitansi,t.no_bukti as bukticash, b.no_bukti as buktibank  FROM t_delivery_order p
                                   LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                   LEFT JOIN t_kwitansi k ON p.id_delivery_order=k.fk_delivery_order
                                   LEFT JOIN t_cash t ON k.no_kwitansi=t.no_ref
                                   LEFT JOIN t_bank b ON k.no_kwitansi=b.no_ref
                                   WHERE p.tgl_batal='0000-00-00 00:00:00' 
                                   ORDER BY p.id_delivery_order DESC";
                                   	$rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                      if ($catat['bukticash']<>'' OR $catat['buktibank']<>''){
                                        $jml=$jml+$catat['total_netto_jual_barang'];
                                ?>
                        <tr>
                          <td><?php echo ($catat['id_delivery_order']);?></td>     
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td>     
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['total_netto_jual_barang'];?>
                        </tr>

                    <?php }
                  }?>
                  <tr><td></td><td></td><td>Total</td><td><?php echo $jml;?></td></tr>
                </tfoot>
              </table>
              <table>
                
              </table>