      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $iddo=$_GET['iddo'];
      ?>
      <table id="dobarang" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Qty</th>
                          <th>Harga Netto</th>                          
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                     $sqlcatat = "SELECT ep.*,p.nama FROM t_delivery_order_detail ep
                                    LEFT JOIN t_barang p ON ep.fk_barang=p.id_barang
                                    WHERE fk_delivery_order='$iddo' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['gross_jual_barang']);?></td>
                          <td ><?php echo rupiah2($catat['diskon_jual_barang']);?></td>
                          <td ><?php echo $catat['qty'];?></td>
                          <td ><?php echo rupiah2($catat['netto_jual_barang']);?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id'];?>" onclick="open_modalbarang(id='<?php echo $catat['id'];?>');"><span>Edit</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#dobarang').DataTable();
          
         
            function open_modalbarang(z){
                              $.ajax({
                                  url: "do/barang_edit.php?iddo=<?php echo $iddo;?>&id="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEditBarang").html(ajaxData);
                                      $("#ModalEditBarang").modal({backdrop: 'static', keyboard:false});
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