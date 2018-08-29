      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $idrk=$_GET['idrk'];
      ?>
      <table idrk="kwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>id</th>
                          <th>No Rekap Kwitansi</th>
                          <th>No Kwitansi</th>
                                                 
                          <th><button type="button" class="btn btn btn-default btn-circle" onclick="open_addkwitansi(idrk='<?php echo $idrk;?>');"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * from t_rekapkwitansi_detail ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id'];?></td>
                          <td ><?php echo $catat['fk_rekapkwitansi'];?></td>
                          <td ><?php echo $catat['fk_kwitansi'];?></td>
                          <td >
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id'];?>" onclick="open_delkwitansi(id='<?php echo $catat['id'];?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#kwitansi').DataTable();
          
           function open_addkwitansi(x){
              $.ajax({
                    url: "po/barang_add.php?idrkrk="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddBarang").html(ajaxData);
                        $("#ModalAddBarang").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
           function open_delkwitansi(y){
                                $.ajax({
                                    url: "po/barang_del.php?idrk="+y,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDeleteBarang").html(ajaxData);
                                        $("#ModalDeleteBarang").modal({backdrop: 'static', keyboard:false});
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