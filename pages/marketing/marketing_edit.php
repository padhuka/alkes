<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_marketing = $_GET['id_marketing'];
    $sqlemp = "SELECT A.*, B.nama AS nmarea FROM t_marketing A
    LEFT JOIN t_area B ON A.fk_area=B.id_area
    WHERE id_marketing='$id_marketing'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_marketing="true">&times;</span></button>
                        <h4 class="modal-title" id_marketing="myModalLabel">Edit Data Marketing</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formmarketing">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodemarketing">Kode Marketing</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_marketing" name="id_marketing" value="<?php echo $emp['id_marketing'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namamarketinglabel" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="kota">Area</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="areaE" name="areaE" value="<?php echo $emp['fk_area'];?>" readonly>
                            <input type="text" class="form-control" id="areanmE" name="areanmE"  value="<?php echo $emp['nmarea'];?>"readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectareaE();">Pilih</button>
                        </div>
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="idmarketing" id="idmarketing" value="<?php echo $emp['id_marketing'];?>">
                            <input type="hidden" name="namamarketing" id="namamarketing" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_marketing="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<?php include_once 'marketing_area_tabE.php';?>

<script type="text/javascript">
 function selectareaE(){  
    $("#ModalAreaE").modal({backdrop: 'static',keyboard: false});   
  }
	$(document).ready(function (){
                      $("#formmarketing").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'marketing/marketing_edit_save.php',
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
			                                                $("#tablemarketing").load('marketing/marketing_load.php');
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