<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_group = $_GET['id_group'];
    $sqlemp = "SELECT A.*,B.*, B.nama AS nmminor, c.nama AS nmmayor, d.nama AS nmdivisi FROM t_group A
    LEFT JOIN t_minor B ON A.fk_minor=B.id_minor
    LEFT JOIN t_mayor C ON B.fk_mayor=C.id_mayor
    LEFT JOIN t_divisi D ON C.fk_divisi=D.id_divisi
    WHERE id_group='$id_group'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_group="true">&times;</span></button>
                        <h4 class="modal-title" id_group="myModalLabel">Edit Data group</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formgroup">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodegroup">Kode group</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_group" name="id_group" value="<?php echo $emp['id_group'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namagrouplabel" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Minor</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="minorE" name="minorE" value="<?php echo $emp['fk_minor'];?>" readonly>
                            <input type="text" class="form-control" id="minornmE" name="minornmE"  value="<?php echo $emp['nmminor'];?>"readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectminorE();">Pilih</button>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Mayor</label>
                          </div>
                          <div class="col-sm-7">                           
                            <input type="text" class="form-control" id="mayornmE" name="mayornmE"  value="<?php echo $emp['nmmayor'];?>" readonly>
                          </div>                        
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Divisi</label>
                          </div>
                          <div class="col-sm-7">                           
                            <input type="text" class="form-control" id="divisinmE" name="divisinmE"  value="<?php echo $emp['nmdivisi'];?>" readonly>
                          </div>                        
                        </div>
                        
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="idgroup" id="idgroup" value="<?php echo $emp['id_group'];?>">
                            <input type="hidden" name="namagroup" id="namagroup" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_group="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<?php include_once 'group_minor_tabE.php';?>

<script type="text/javascript">
 function selectminorE(){     
            $("#ModalminorE").modal({backdrop: 'static',keyboard: false});  
  }
	$(document).ready(function (){
                      $("#formgroup").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'group/group_edit_save.php',
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
			                                                $("#tablegroup").load('group/group_load.php');
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