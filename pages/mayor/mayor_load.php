      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="mayor1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Mayor</th>
                          <th>Nama</th>
                          <th>Divisi</th>
                          <th><button type="button" class="btn btn btn-default btn-circle open_add" ><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT A.*, B.nama AS nmdivisi FROM t_mayor A
                                    LEFT JOIN t_divisi B ON A.fk_divisi=B.id_divisi
                                    ORDER BY id_mayor ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_mayor'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['nmdivisi'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_mayor']; ?>" onclick="open_modal(ideditmayor='<?php echo $catat['id_mayor']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_mayor']; ?>" onclick="open_del(iddelmayor='<?php echo $catat['id_mayor']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#mayor1').DataTable();
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "mayor/mayor_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "mayor/mayor_del.php?id_mayor="+iddelmayor,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "mayor/mayor_edit.php?id_mayor="+ideditmayor,

                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
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