<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_minor = $_GET['id_minor'];
    $sqlemp = "SELECT A.*,B.*, B.nama AS nmmayor, c.nama AS nmdivisi FROM t_minor A
    LEFT JOIN t_mayor B ON A.fk_mayor=B.id_mayor
    LEFT JOIN t_divisi C ON B.fk_divisi=C.id_divisi
    WHERE id_minor='$id_minor'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_minor="true">&times;</span></button>
                        <h4 class="modal-title" id_minor="myModalLabel">Edit Data Minor</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formminor">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodeminor">Kode Minor</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_minor" name="id_minor" value="<?php echo $emp['id_minor'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namaminorlabel" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
                        
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Mayor</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="mayorE" name="mayorE" value="<?php echo $emp['fk_mayor'];?>" readonly>
                            <input type="text" class="form-control" id="mayornmE" name="mayornmE"  value="<?php echo $emp['nmmayor'];?>"readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectmayorE();">Pilih</button>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Divisi</label>
                          </div>
                          <div class="col-sm-7">                            
                            <input type="text" class="form-control" id="divisinmE" name="divisinmE"  value="<?php echo $emp['nmdivisi'];?>"readonly>
                          </div>
                        </div>
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="idminor" id="idminor" value="<?php echo $emp['id_minor'];?>">
                            <input type="hidden" name="namaminor" id="namaminor" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_minor="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<?php include_once 'minor_mayor_tabE.php';?>

<script type="text/javascript">
 function selectmayorE(){  
    $("#ModalmayorE").modal({backdrop: 'static',keyboard: false});
  }
	$(document).ready(function (){
                      $("#formminor").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'minor/minor_edit_save.php',
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
			                                                $("#tableminor").load('minor/minor_load.php');
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