<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Tambah Kwitansi <button type="button" class="close" aria-label="Close" onclick="$('#ModalAdd').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansi">
                 
                    <div class="modal-body">
                      
                      <div class="modal-title-detail">DATA DELIVERY ORDER</div>
                      <div class="row">

                       <div class="col-sm-6">
                       <table id="pkbshow" class="table table-condensed table-bordered table-striped table-hover">
                       <td>
                         <th class="col-sm-8">
                        <tr> <th>No DO</th> <td><input type="text" class="form-control" name="iddo" id="iddo" readonly> <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="kwitansi();">Pilih</button></td></tr> 
                        </th>
                       </td>

                       </table>
                        </div>

                        <div class="col-sm-6">
                        <table id="pkbshow" class="table table-condensed table-bordered table-striped table-hover">
                          <td>
                         <th class="col-sm-6">

                        <tr> <th>Tanggal Delivery Order</th> <td ><label id="tgl"></label></td></tr>
                        <tr> <th>Nama Customer</th> <td ><label id="nama"></label></td></tr>
                        <tr> <th>Telp</th>   <td ><label id="telp"></label></td> </tr>
                        </th>
                        </td>
                        </table>
                        </div>
                        
                      </div>
                      <div class="row">
                         <div class="col-sm-6">
                          <div class="form-group">
                           <div class="col-sm-3">
                            <label for="ppnlabel">PPN</label>
                          </div>
                          <div class="col-sm-8">
                         <label class="radio-inline">
                              <input type="radio" name="ppn" value="Y" checked="checked">Include PPN
                            </label>
                            <label class="radio-inline">
                              <input type="radio"  name="ppn" value="N">Exclude PPN
                            </label>
                             </div>
                        </div>
                         </div>
                      </div>


                    
                       <div class="modal-title-detail">NILAI DELIVERY ORDER </div>
                      <div class="row">
                       <div class="col-sm-12">
                       <table id="kwitansiform" class="table table-condensed table-bordered table-striped table-hover">
                       <td >
                         <th class="col-sm-2">
                        <tr class="total"> 
                          <th>Total Gross</th><td><label id="grosstotal"></label></td>
                          <th>Total Diskon</th> <td><label id="diskontotal"></label></td>
                          <th>Total Netto</th> <td><label id="nettototal"></label></td>
                        </tr>

                        </th>
                       </td>
                      </table>
                
                           </div>
                      </div>
                  
                      <div class="row">
                       <div class="col-sm-12">
                        
                       
                      </div>
                    </div>
                       <div class="form-group">
                        <div class="modal-footer">
                      <div class="but">
                                    <button type="submit" class="btn btn-primary save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-primary" name="close" onclick="$('#ModalAdd').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
               </div>
             </form>
           </div>
           </div>      
           <?php include_once 'kwitansi_do_tab.php';?>

            <script type="text/javascript">
              function kwitansi(){ 
                $("#ModalDo").modal({backdrop: 'static',keyboard:false});   
              }
             
            $(document).ready(function (){

                      $("#formkwitansi").on('submit', function(e){
                          var ides=  $("#iddo").val();
                      
                          if (ides==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'kwitansi/kwitansi_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#kwitansi").load('kwitansi/kwitansi_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                            //var hsl=data.trim();       
                                                            //alert(hsl);

                                                             
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
  .total {
  font-weight: bold;border-top:   inset;
  }
    .but {
    text-align: center;
  }
  .modal-title-detail {
    font-style: italic;
    background-color: lightblue;
    text-align: center;
    font-weight: bold;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
    width: 800px;
  }
</style>