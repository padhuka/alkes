<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_mayor = $_GET['id_mayor'];
    $sqlmayor = "SELECT * FROM t_mayor WHERE id_mayor='$id_mayor'";
    $mayorar = mysql_query( $sqlmayor );
    $emp = mysql_fetch_array( $mayorar );
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_mayor="true">&times;</span></button>
                        <h4 class="modal-title" id_mayor="myModalLabel">Hapus Data Mayor</h4>
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id_mayor" name="id_mayor" value="<?php echo $id_mayor;?>">
                                            <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_mayor="true">&nbsp;Batal&nbsp;</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            var id_mayor = $('#id_mayor').val();
                           $.ajax({
                                url: 'mayor/mayor_del_save.php?id_mayor='+id_mayor,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_mayor='+$id_mayor);
                                      $("#tablemayor").load('mayor/mayor_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 