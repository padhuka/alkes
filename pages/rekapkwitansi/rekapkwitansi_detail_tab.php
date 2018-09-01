 		      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>

        <table id="kwitansidetail" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No Rekap Kwitansi</th>
                          <th>Tgl</th>
                          <th>Keterangan</th>
                                                  
                </tr>
                </thead>
                <tbody>  
                <?php 
                  $idrk= $_GET['idrk'];
                  $sqlpo= "SELECT * FROM t_rekapkwitansi WHERE id_rekapkwitansi = '$idrk'";
                  $hest= mysql_fetch_array(mysql_query($sqlpo));
                ?>              
                        <tr>
                     
                          <td><?php echo $hest['id_rekapkwitansi'];?></td>
                          <td ><?php echo date('d-m-Y', strtotime($hest['tgl']));?></td>   
                          <td><?php echo $hest['keterangan'];?></td>
                        </tr>
                </tfoot>
              </table>
              <script>
            $('#kwintasixx').DataTable();
        </script>