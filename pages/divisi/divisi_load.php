      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="divisi1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode divisi</th>
                          <th>Nama</th>
                          <th><button type="button" class="btn btn btn-default btn-circle open_add" ><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_divisi ORDER BY id_divisi ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_divisi'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_divisi']; ?>" onclick="open_modal(ideditdivisi='<?php echo $catat['id_divisi']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_divisi']; ?>" onclick="open_del(iddeldivisi='<?php echo $catat['id_divisi']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#divisi1').DataTable();
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "divisi/divisi_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "divisi/divisi_del.php?id_divisi="+iddeldivisi,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "divisi/divisi_edit.php?id_divisi="+ideditdivisi,

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