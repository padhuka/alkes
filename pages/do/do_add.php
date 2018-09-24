<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    //$idso= 'EST_BR.020818.000001';
 //   $sqlpan= "SELECT * FROM t_estimasi WHERE id_estimasi='$idso'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Tamba Data Delivery Order <button type="button" class="close" aria-label="Close" onclick="$('#ModalAdd').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formdoadd">
                 
                    <div class="modal-body">
                      
                      <div class="modal-title-detail">DATA SALES ORDER</div>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover">
                       <td>
                         <th class="col-sm-8">
                        <tr> <th>No Sales Order</th> <td ><input type="text" class="form-control" name="idso" id="idso" readonly><button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihSO();">Pilih</button></td></tr>
                        
                        
                        </th>
                       </td>
                      </table>
                           </div>
                            <div class="col-sm-6">
                               <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover">
                          <td>
                         <th class="col-sm-6">
                          <tr> <th>Tanggal Sales Order</th> <td ><label id="tgl"></label></td></tr>
                        <tr> <th>Nama Customer</th> <td ><label id="nama"></label></td></tr>
                        <tr> <th>Telp</th>   <td ><label id="telp"></label></td> </tr>
                        </th>
                       </td>
                               </table>
                         </div>

                      </div>

                       <div class="modal-title-detail">NILAI SALES ORDER </div>
                      <div class="row">
                       <div class="col-sm-12">
                       <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover">
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
           <?php include_once 'do_so_tab.php';?>
           <div id="ModalPanelShow" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
           <div id="ModalPartShow" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<script type="text/javascript">
              function pilihSO(){ 
                $("#ModalSo").modal({backdrop: 'static',keyboard:false});   
              }
              
            $(document).ready(function (){

                      $("#formdoadd").on('submit', function(e){
                          var ides=  $("#idso").val();
                          if (ides==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'do/do_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tabledo").load('do/do_load.php');
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
  .modal-content {
    height: 450px;
     width: auto;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
    width: 800px;
  }
</style>