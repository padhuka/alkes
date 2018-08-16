<!-- general form elements disabled -->
   <?php

    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpo= $_GET['idpo'];

   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Delivery Order <button type="button" class="close" aria-label="Close" onclick="$('#ModalPoPrint').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                  <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_pembelian e 
                                                  left join t_supplier c
                                                  on e.fk_supplier=c.id_supplier
                                                  where e.id_pembelian='$idpo'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat )
                                ?>
                    <div class="modal-body">
                      <div class="modal-title-detail" align="center"><h4><u>Detail Purchase Order</u></h4><h5><?php echo $catat['id_pembelian'];?></h5></div>
                      <div class="row">
                       <div class="col-sm-10">
                           <table id="poshow" class="">
                           <td>
                             <th class="col-sm-8">
                            <tr> <th>No Purchase Order</th> <td > : <?php echo $catat['id_pembelian'];?></td></tr>
                            <tr> <th>Tanggal</th> <td > : <?php echo $catat['tgl'];?></td></tr>
                            <tr> <th>Nama Supplier</th>  <td > : <?php echo $catat['nama'];?></td></tr>
                            </th>
                           </td>
                          </table>
                        </div>
                        <table id="showbarang" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Qty</th>
                          <th>Harga Netto</th>    
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $jml=0;
                                    $sqlcatat = "SELECT ep.*,p.nama FROM t_pembelian_detail  ep
                                    LEFT JOIN t_barang p ON ep.fk_barang=p.id_barang
                                    WHERE fk_pembelian='$idpo' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                      $jml=$jml+$catat['netto_beli_barang'];
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['gross_beli_barang']);?></td>
                          <td ><?php echo rupiah2($catat['diskon_beli_barang']);?></td>
                          <td ><?php echo $catat['qty'];?></td>
                          <td ><?php echo rupiah2($catat['netto_beli_barang']);?></td>                          
                        </tr>
                    <?php }?>
                        <tr><td colspan="4" align="right">Total</td><td><?php echo rupiah2($jml);?></td></tr>
                        <!--<tr><td colspan="4" align="right">PPN</td><td>0</td></tr>
                        <tr><td colspan="4" align="right">Total</td><td><?php //echo rupiah2($jml);?></td></tr>-->
                   
                </tfoot>
              </table>
                          
                      </div>
                       
                
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but"><a href="po/po_cetak.php?idpo=<?php echo $idpo;?>" target="blank"><button type="button" class="btn btn-primary" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalPoPrint').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           

