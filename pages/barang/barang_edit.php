<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_barang = $_GET['id_barang'];
    $sqlemp = "SELECT * FROM t_barang WHERE id_barang='$id_barang'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

    $namagroup=mysql_query("SELECT * FROM t_group WHERE id_group='$emp[fk_group]'");
    $groupselect=mysql_fetch_array($namagroup);
    $groupnm=$groupselect['nama'];

    $namasatuan=mysql_query("SELECT * FROM t_satuan WHERE id_satuan='$emp[fk_satuan]'");
    $satuanselect=mysql_fetch_array($namasatuan);
    $satuannm=$satuanselect['nama'];
  ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_barangden="true">&times;</span></button>
                        <h4 class="modal-title" id_barang="myModalLabel">Edit Data Barang</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formBarang">
                        <div class="form-group">
                          <div class="col-sm-3">
                          <label for="kodebarang">Kode Barang</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="id_barang" name="id_barang" value="<?php echo $emp['id_barang'];?>" readonly>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="namabarang" >Nama</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required>
				                  </div>
				                </div>
                            <div class="form-group">
                          <div class="col-sm-3">
                            <label for="satuan">Satuan</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="satuan" name="satuan" value="<?php echo $emp['fk_satuan'];?>" readonly>
                            <input type="text" class="form-control" id="satuannm" name="satuannm"  value="<?php echo $satuannm;?>"  readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectsatuan();">Pilih</button>
                        </div>
                          <div class="form-group">
                          <div class="col-sm-3">
                            <label for="group">Group</label>
                          </div>
                          <div class="col-sm-7">
                            <input type="hidden" class="form-control" id="group" name="group" value="<?php echo $emp['fk_group'];?>" readonly>
                            <input type="text" class="form-control" id="groupnm" name="groupnm"  value="<?php echo $groupnm;?>"  readonly>
                          </div>
                        <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="selectgroup();">Pilih</button>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="hargapokokbarang">Harga Pokok</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="hargapokok" name="hargapokok"  value="<?php echo $emp['harga_pokok'];?>" required>
                          </div>
                        </div>
				                <div class="form-group">
                            <div class="col-sm-3">
				                  <label for="hargajualbarang" >Harga Jual</label>
                        </div>
				                  <div class="col-sm-8">
				                    <input type="text" class="form-control" id="hargajual" name="hargajual"  value="<?php echo $emp['harga_jual'];?>" required>
				                  </div>
				                </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                          <label for="diskonbarang" >Diskon</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="diskon" name="diskon" value="<?php echo $emp['diskon'];?>" required>
                          </div>
                        </div>
                           <div class="form-group">
                            <div class="col-sm-3">
                          <label for="ppnbarang" >PPN</label>
                        </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" id="ppn" name="ppn" value="<?php echo $emp['ppn'];?>" required>
                          </div>
                        </div>
				                <div class="form-group">
                                  <div class="modal-footer">
				                  <div class="col-sm-8">
				                  	<input type="hidden" name="id_baranghid" id="id_baranghid" value="<?php echo $emp['id_barang'];?>">
                            <input type="hidden" name="namahid" id="namahid" value="<?php echo $emp['nama'];?>">
				                  	<button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hid_barangden="true">&nbsp;Batal&nbsp;</button>
				                  </div>
                                </div>
				                </div>
				            </form>
			         </div>
				</div>

</div>
<?php include_once 'barang_satuan_tab.php';?>
<?php include_once 'barang_group_tab.php';?>
<script type="text/javascript">
  function selectsatuan(){  
    $("#ModalSatuan").modal('show',{backdrop: 'true'});   
  }
   function selectgroup(){  
    $("#ModalGroup").modal('show',{backdrop: 'true'});   
  }
	$(document).ready(function (){

                      $("#formBarang").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'barang/barang_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                       // alert(hsl);
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tablebarang").load('barang/barang_load.php');
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