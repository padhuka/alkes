      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="so1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>Tgl Masuk</th>
                          <th>No Chasis</th>
                          <th>No Mesin</th>
                          <th>No Polisi</th>
                          <th>Total Sales Order</th>

                     
                          <th><button type="button" class="btn btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT  FROM t_penjualan WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY e.id_penjualan DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){

                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_est(idestimasi='<?php echo $catat['id_penjualan']; ?>');"><span><?php echo ($catat['id_penjualan']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['fk_customer'];?></td>
                          <td ><?php echo $catat['fk_no_mesin'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                           <td ><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_modal(idestimasi='<?php echo $catat['id_penjualan']; ?>');"><span>Edit</span></button>

                                         <?php if ($catat['no_kwitansi_or'] =='') { ?>

                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_del(idestimasi='<?php echo $catat['id_penjualan']; ?>');"><span>Batal</span></button> 

                                         <?php }?>

                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="cetak_est(idestimasi='<?php echo $catat['id_penjualan']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
            $('#estimasi1').DataTable({
              "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }
            });
           
           function open_add(){
              $.ajax({
                    url: "estimasi/estimasi_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
              
           function open_del(x){
                                $.ajax({
                                    url: "estimasi/estimasi_del.php?idestimasi="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(y){
                              $.ajax({
                                  url: "estimasi/estimasi_edit.php?idestimasi="+y,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
              
            function open_est(z){
                              $.ajax({
                                  url: "estimasi/estimasi_show.php?idestimasi="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };

            function cetak_est(q){
                              $.ajax({
                                  url: "estimasi/estimasi_print.php?idestimasi="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEstPrint").html(ajaxData);
                                      $("#ModalEstPrint").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            
      </script>

<style type="text/css">
  .table {
    border-spacing: 0;
    border-collapse: collapse;
    margin-bottom: 0px;
  }
  .thead-light{
    background-color: lightgrey;
  }
  .btn {
    font-weight: bold;
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
  }
</style>