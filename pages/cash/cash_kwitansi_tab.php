    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalCashKwitansi" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Kwitansi <button type="button" class="close" aria-label="Close" onclick="$('#ModalCashKwitansi').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="cashkwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No Kwitansi</th>
                          <th>Nilai</th>
                          <th></th>
                </tr>

                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT k.no_kwitansi as no_kwitansi,k.total_kwitansi as nilai from t_kwitansi k
                                   LEFT JOIN t_bank b ON k.no_kwitansi=b.no_ref 
                                   LEFT JOIN t_cash c ON k.no_kwitansi=c.no_ref 
                                   WHERE b.no_ref IS NULL AND c.no_ref IS NULL";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                       
                       
                          <td ><?php echo $catat['no_kwitansi'];?></td>
                          <td ><?php echo $catat['nilai'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn btn-default btn-circle" onclick="selectKwitansi(
                                         '<?php echo $catat['no_kwitansi'];?>',
                                         '<?php echo $catat['nilai'];?>',
                                        );">Pilih</button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              </div>
              </div>
              </div>
              </div>
              </div> 
              <script type="text/javascript">
                $('#cashkwitansi').DataTable({
                  "pageLength": 5,
                    "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }

                });

               function selectKwitansi(a,b){
                              $("#nokwitansi").val(a);
                              $("#nilai").val(b);
                              $("#ModalCashKwitansi").modal('hide');
                              
                      }; 
              </script>

  <style type="text/css">
  .modal-header {
    padding-top: 15px;padding-bottom: 15px;
  }
  .title-header {
    font-size: 20px;
    text-align: center;
    font-weight: bold;
    font-family: monospace;
  }
/*  .modal-content {
    height: 450px;
  }*/
  .row {
    margin-left: 0px;
    margin-right: 0px;
    margin-top:10px;
  }
  .modal-title {
    padding-top: 5px;padding-bottom: 5px;
  }
</style>

