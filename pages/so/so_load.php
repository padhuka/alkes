      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
       <!-- <table class="border " width="100%" style=" border: 1px solid lightgray ; border-collapse: collapse;"> 
      <tbody>
        <tr>
            <td style="padding-left: 15px;font-weight: bold;">
              PERIODE
            </td>
            <td style="padding-left: 15px;font-weight: bold;">
              CARI
            </td>
        </tr>
             
        <tr>
          <td >
                 <div class="form-group">
        <div class="col-sm-4">
          <div class="input-group input-daterange">
              <input type="text" id="min" class="form-control" value="<?php echo date('d-m-Y');?>">
              <span class="input-group-addon">to</span>
              <input type="text" id="max" class="form-control" value="<?php echo date('d-m-Y');?>">
           </div>
        </div>
             </td>
             <td>
               
            <div class="col-sm-10">
               <input type="text" id="mySearch" class="form-control" value="">
            </div>
             </td>
        </tr>
       <tr>
            <td style="padding-left: 15px;">
             &nbsp;
            </td>
            <td style="padding-left: 15px;">
          &nbsp;
            </td>
        </tr>
      
      </tbody>

       </div> 
      </table> -->
      <table id="so1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>Tgl</th>
                          <th>Customer</th>
                          <th>Total Sales Order</th>

                     
                          <th><button type="button" class="btn btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT  * FROM t_penjualan p 
                                    LEFT JOIN t_customer c on p.fk_customer=c.id_customer
                                    WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY id_penjualan DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){

                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_so(idso='<?php echo $catat['id_penjualan']; ?>');"><span><?php echo ($catat['id_penjualan']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['nama'];?></td>
                           <td ><?php echo rupiah2($catat['total_netto_jual_barang']);?></td>
                          <td >
                                        <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_modal(idso='<?php echo $catat['id_penjualan']; ?>');"><span>Edit</span></button>

                                         

                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="open_del(idso='<?php echo $catat['id_penjualan']; ?>');"><span>Batal</span></button> 

                                         

                                         <button type="button" class="btn btn btn-default btn-circle" id="<?php echo $catat['id_penjualan']; ?>" onclick="cetak_so(idso='<?php echo $catat['id_penjualan']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
               $('#so1').DataTable({
              "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_ | _MAX_",
                      "infoEmpty": "Tidak ada data di database"
                  }
            });
           function open_add(){
              $.ajax({
                    url: "so/so_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
              
           function open_del(x){
                                $.ajax({
                                    url: "so/so_del.php?idso="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(y){
                              $.ajax({
                                  url: "so/so_edit.php?idso="+y,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
              
            function open_so(z){
                              $.ajax({
                                  url: "so/so_show.php?idso="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };

            function cetak_so(q){
                              $.ajax({
                                  url: "so/so_print.php?idso="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalSoPrint").html(ajaxData);
                                      $("#ModalSoPrint").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            // $.fn.dataTableExt.afnFiltering.push(
            // function(oSettings, aData, iDataIndex){
               
            //     var dateStart = parseDateValue($("#min").val());
            //     var dateEnd = parseDateValue($("#max").val());
         
            //     // aData represents the table structure as an array of columns, so the script access the date value 
            //     // in the first column of the table via aData[0]
            //     var evalDate= parseDateValue(aData[1]);
            //     //alert(aData[0]);

            //     if (evalDate >= dateStart && evalDate <= dateEnd) {
            //         return true;
            //     }
            //     else {
            //         return false;
            //     }
            //     });
            //    // Convert a date value into a numeric string for comparison (example 12 Oct 2010 becomes 20101012
            //     function parseDateValue(rawDate) {
            //       var dateArray = rawDate.split("-");
            //       var parsedDate = dateArray[2] + dateArray[1] + dateArray[0];
            //       return parsedDate;
            //     }
                    
            //     var oTable = $('#so1').dataTable({
            //         "iDisplayLength": 15,
            //         "bStateSave": false,
            //         "lengthChange": false,
            //         "ordering": true,
            //         "info":     true,
            //         "language": {
            //             "search": "Cari",
            //             "lengthMenu": "Lihat _MENU_ baris per halaman",
            //             "zeroRecords": "Maaf, Tidak di temukan - data",
            //             "info": " Hal _PAGE_ dari _PAGES_ Total Halaman ",
            //             "infoFiltered": " | Total Data _MAX_ ",
            //             "infoEmpty": "Tidak ada data di database"
            //               }


            //     });
            //     var table = $('#poLoad').DataTable();

            //     $('#mySearch').on('keyup', function () {
            //         table.search( this.value ).draw();
            //     } );

            //     $('#min,#max').datepicker({
            //         format: "dd-mm-yyyy",
            //         weekStart: 1,
            //         daysOfWeekHighlighted: "0",
            //         autoclose: true,
            //         todayHighlight: true
            //     });

            //     // Add event listeners to the two range filtering inputs
            //     $("#min").datepicker().on( 'changeDate', function() {
            //       oTable.fnDraw(); 
            //     });
            //     $("#max").datepicker().on( 'changeDate', function() { 
            //       oTable.fnDraw(); 
            //     });
      </script>

<style type="text/css">
  .table {
    border-spacing: 0;
    border-collapse: collapse;
    margin-bottom: 0px;
  }
  .thead-light{
    background-color: lightgrey;
  }
  .btn {
    font-weight: bold;
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
  }
   /* .dataTables_wrapper .dataTables_filter {
    float: right;
    text-align: right;
    visibility: hidden;
    }*/
</style>