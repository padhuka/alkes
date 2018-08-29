<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_divisi = $_GET['id_divisi'];
    $sqldivisi = "SELECT * FROM t_divisi WHERE id_divisi='$id_divisi'";
    $divisiar = mysql_query( $sqldivisi );
    $emp = mysql_fetch_array( $divisiar );
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_divisi="true">&times;</span></button>
                        <h4 class="modal-title" id_divisi="myModalLabel">Hapus Data Divisi</h4>
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id_divisi" name="id_divisi" value="<?php echo $id_divisi;?>">
                                            <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_divisi="true">&nbsp;Batal&nbsp;</button>
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
                            var id_divisi = $('#id_divisi').val();
                           $.ajax({
                                url: 'divisi/divisi_del_save.php?id_divisi='+id_divisi,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_divisi='+$id_divisi);
                                      $("#tabledivisi").load('divisi/divisi_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 