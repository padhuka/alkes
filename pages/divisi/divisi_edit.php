<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_divisi = $_GET['id_divisi'];
    $sqlemp = "SELECT * FROM t_divisi WHERE id_divisi='$id_divisi'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_divisi="true">&times;</span></button>
                        <h4 class="modal-title" id_divisi="myModalLabel">Edit Data Divisi</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formdivisi">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodedivisi">Kode Kota</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_divisi" name="id_divisi" value="<?php echo $emp['id_divisi'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namadivisilabel" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="iddivisi" id="iddivisi" value="<?php echo $emp['id_divisi'];?>">
                            <input type="hidden" name="namadivisi" id="namadivisi" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_divisi="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){
                      $("#formdivisi").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'divisi/divisi_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                       //alert(hsl);
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tabledivisi").load('divisi/divisi_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>
<style type="text/css">
  .modal-footer {
    padding-top: 10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .modal-title {
    font-style: italic;
    background-color: lightcoral;
    text-align: center;
    font-weight: bold;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
  }
</style>