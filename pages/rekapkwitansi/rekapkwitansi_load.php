      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>      
      
      <table id="rekapkwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No Rekap Kwitansi</th>
                          <th>Tgl</th>
                          <th>Keterangan</th>
                       

                     
                          <th><button type="button" class="btn btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_rekapkwitansi 
                                    WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY id_rekapkwitansi DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){

                                ?>
                        <tr>
                         
                          <td ><?php echo $catat['id_rekapkwitansi'];?></td>
                          <td ><?php echo date('d-m-Y', strtotime($catat['tgl']));?></td>           <td ><?php echo $catat['keterangan'];?></td>                         
                          <td >
                                        
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_rekapkwitansi']; ?>" onclick="open_del(idrekapkwitansi='<?php echo $catat['id_rekapkwitansi']; ?>');"><span>Batal</span></button> 

                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_rekapkwitansi']; ?>" onclick="cetak_rekapkwitansi(idrekapkwitansi='<?php echo $catat['id_rekapkwitansi']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
           $('#rekapkwitansi').DataTable({
              "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_ | _MAX_",
                      "infoEmpty": "Tidak ada data di database"
                  }
            });

           function open_add(){
              $.ajax({
                    url: "rekapkwitansi/rekapkwitansi_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
              
           function open_del(x){
                                $.ajax({
                                    url: "rekapkwitansi/rekapkwitansi_del.php?idrekapkwitansi="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(y){
                              $.ajax({
                                  url: "rekapkwitansi/rekapkwitansi_edit.php?idrekapkwitansi="+y,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
              
            function open_rekapkwitansi(z){
                              $.ajax({
                                  url: "rekapkwitansi/rekapkwitansi_show.php?idrekapkwitansi="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };

            function cetak_rekapkwitansi(q){
                              $.ajax({
                                  url: "rekapkwitansi/rekapkwitansi_print.php?idrekapkwitansi="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalrekapkwitansiPrint").html(ajaxData);
                                      $("#ModalrekapkwitansiPrint").modal({backdrop: 'static',keyboard: false});
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
  .rowfilter {
    margin-right: -15px;
    margin-left: -15px;
    padding-top: 2px;
  }
/*  .dataTables_wrapper .dataTables_filter {
    float: right;
    text-align: right;
    visibility: hidden;
    }*/
</style>