<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_mayor = $_GET['id_mayor'];
    $sqlemp = "SELECT A.*, B.nama AS nmdivisi FROM t_mayor A
    LEFT JOIN t_divisi B ON A.fk_divisi=B.id_divisi
    WHERE id_mayor='$id_mayor'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_mayor="true">&times;</span></button>
                        <h4 class="modal-title" id_mayor="myModalLabel">Edit Data Mayor</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formmayor">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodemayor">Kode Mayor</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_mayor" name="id_mayor" value="<?php echo $emp['id_mayor'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namamayorlabel" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Divisi</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="divisiE" name="divisiE" value="<?php echo $emp['fk_divisi'];?>" readonly>
                            <input type="text" class="form-control" id="divisinmE" name="divisinmE"  value="<?php echo $emp['nmdivisi'];?>"readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectdivisiE();">Pilih</button>
                        </div>
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="idmayor" id="idmayor" value="<?php echo $emp['id_mayor'];?>">
                            <input type="hidden" name="namamayor" id="namamayor" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_mayor="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<?php include_once 'mayor_divisi_tabE.php';?>

<script type="text/javascript">
 function selectdivisiE(){  
    $("#ModaldivisiE").modal({backdrop: 'static',keyboard: false});   
  }
	$(document).ready(function (){
                      $("#formmayor").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'mayor/mayor_edit_save.php',
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
			                                                $("#tablemayor").load('mayor/mayor_load.php');
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