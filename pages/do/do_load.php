      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="tabledo1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No DO</th>
                          <th>Tgl DO</th>
                          <th>Customer</th>
                          <th>Total DO</th>
                          <th><button type="button" class="btn btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT p.*,c.nama,k.no_kwitansi FROM t_delivery_order p
                                   LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                   LEFT JOIN t_kwitansi k ON p.id_delivery_order=k.fk_delivery_order
                                   WHERE p.tgl_batal='0000-00-00 00:00:00' ORDER BY p.id_delivery_order DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_delivery_order']; ?>" onclick="open_do(iddo='<?php echo $catat['id_delivery_order']; ?>');"><span><?php echo ($catat['id_delivery_order']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y',strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['total_netto_jual_barang']);?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_delivery_order']; ?>" onclick="open_modal(iddo='<?php echo $catat['id_delivery_order']; ?>');"><span>Edit</span></button>
                                           <?php if ($catat['no_kwitansi'] =='') { ?>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_delivery_order']; ?>" onclick="open_del(iddo='<?php echo $catat['id_delivery_order']; ?>');"><span>Batal</span></button>

                                         <?php }?>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_delivery_order']; ?>" onclick="cetak_do(iddo='<?php echo $catat['id_delivery_order']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
            $('#tabledo1').DataTable({
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
                    url: "do/do_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }

                        
           function open_del(x){
                                $.ajax({
                                    url: "do/do_del.php?iddo="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
              
            function open_modal(y){
                              $.ajax({
                                  url: "do/do_edit_detail.php?iddo="+y,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };         
            function open_do(z){
                              $.ajax({
                                  url: "do/do_show.php?iddo="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
             function cetak_do(q){
                              $.ajax({
                                  url: "do/do_print.php?iddo="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalDoPrint").html(ajaxData);
                                      $("#ModalDoPrint").modal({backdrop: 'static',keyboard: false});
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