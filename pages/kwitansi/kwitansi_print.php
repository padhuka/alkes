<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $no_kwitansi= $_GET['no_kwitansi'];
    //   $sqlpan= "SELECT * FROM t_kwitansi WHERE t_kwitansi='$no_kwitansi'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px"> <button type="button" class="close" aria-label="Close" onclick="$('#ModalKwPrint').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                  <?php
                                    $j=1;
                                    $sqlcatat = "SELECT e.*, c.alamat AS alamatcustomer,c.no_telp AS telpcustomer,c.nama AS nmcustomer FROM t_kwitansi e
                                    LEFT JOIN t_delivery_order a ON e.fk_delivery_order=a.id_delivery_order
                                    LEFT JOIN t_customer c ON a.fk_customer=c.id_customer
                                    WHERE e.no_kwitansi='$no_kwitansi'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
                                    $iddelivery_order=$catat['fk_delivery_order'];
                                ?>
                    <div class="modal-body">
                      <div class="modal-title-detail" align="center"><h4><u>INVOICE</u></h4><h5><?php echo $catat['no_kwitansi'];?></h5></div>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="delivery_ordershow" class="">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No DO</th> <td ><?php echo $iddelivery_order;?></td></tr>
                        <tr> <th>Tanggal </th> <td ><?php echo $catat['tgl_kwitansi'];?></td></tr>
                        </th>
                       </td>
                      </table>
                           </div>

                            <div class="col-sm-6">
                              <table id="delivery_ordershow" class="">
                              <td>
                                  <th class="col-sm-6">                                    
                                    <tr><th>Nama Customer</th> <td ><?php echo $catat['nmcustomer'];?></td></tr>
                                    <tr><th>Telp</th><td ><?php echo $catat['telpcustomer'];?></td></tr>
                                    <tr><th>Alamat</th><td ><?php echo $catat['alamatcustomer'];?></td></tr>
                                  </th>
                              </td>
                              </table>
                         </div>
                      </div>
                       
                <table id="delivery_orderpanel" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                        <tr><th>Nama </th><th>Harga</th><th>Qty</th><th>Disc</th><th>Total</th></tr>
                        </thead>
                        <tbody>
                <?php
                                    $j=1;
                                    $sqlcatatp = "SELECT * FROM t_delivery_order_detail a 
                                    LEFT JOIN t_barang p ON a.fk_barang=p.id_barang
                                    WHERE a.fk_delivery_order ='$iddelivery_order'";
                                    $rescatatp = mysql_query( $sqlcatatp );
                                    while($catatp = mysql_fetch_array( $rescatatp )){
                                ?>
                        <tr>
                          <td><?php echo $catatp['nama'];?></td>
                          <td><?php echo rupiah2($catatp['gross_jual_barang']);?></td>
                          <td><?php echo $catatp['qty'];?></td>
                          <td><?php echo $catatp['diskon_jual_barang'];?></td>
                          <td align="right"><?php echo rupiah2($catatp['netto_jual_barang']);?></td>
                        </tr>
                    <?php }?>
                  
                           
                        <tr><td colspan="4" align="right">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_netto_barang']);?></td></tr>
                        <tr><td colspan="4" align="right">PPN</td><td align="right"><?php echo rupiah2($catat['total_ppn_kwitansi']);?></td></tr>
                        <tr><td colspan="4" align="right"><strong>Grand Total</strong></td><td align="right"><?php echo rupiah2($catat['total_kwitansi']);?></td></tr>
                </tfoot>
              </table>
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but"><a href="kwitansi/kwitansi_cetak.php?no_kwitansi=<?php echo $no_kwitansi;?>" target="blank"><button type="button" class="btn btn-primary" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalKwPrint').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           

