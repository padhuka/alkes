<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_marketing = $_GET['id_marketing'];
    $sqlmarketing = "SELECT * FROM t_marketing WHERE id_marketing='$id_marketing'";
    $marketingar = mysql_query( $sqlmarketing );
    $emp = mysql_fetch_array( $marketingar );
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_marketing="true">&times;</span></button>
                        <h4 class="modal-title" id_marketing="myModalLabel">Hapus Data Marketing</h4>
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id_marketing" name="id_marketing" value="<?php echo $id_marketing;?>">
                                            <button type="button" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_marketing="true">&nbsp;Batal&nbsp;</button>
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
                            var id_marketing = $('#id_marketing').val();
                           $.ajax({
                                url: 'marketing/marketing_del_save.php?id_marketing='+id_marketing,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_marketing='+$id_marketing);
                                      $("#tablemarketing").load('marketing/marketing_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 