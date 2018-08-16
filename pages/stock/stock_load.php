      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="tablestockload" class="table table-condensed table-bordered table-striped table-hover">
      
                <thead class="thead-light">
                <tr>
                          <th>Kode Barang</th>
                          <th>Nama</th>
                          <th>Stok Akhir</th>
                          
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT FX.fk_barang,FX.nama,(FX.qty - X.qty) as qty FROM (
                                       SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama, sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                       LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='masuk') AS FX
                                       JOIN  (SELECT * FROM (
                                        SELECT * FROM
                                       (
                                       SELECT pd.fk_barang,b.nama,sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
                                       LEFT  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
                                       LEFT  join t_barang b ON pd.fk_barang=b.id_barang
                                       WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
                                      UNION
                                       SELECT od.fk_barang,g.nama,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
                                       LEFT join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
                                        LEFT join t_barang g ON od.fk_barang=g.id_barang
                                       WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='keluar') AS PX ) AS X         
                                       ON FX.fk_barang=X.fk_barang";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['fk_barang'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['qty'];?></td>
                          
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#tablestockload').DataTable({
              "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }
             });
            
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
    padding-LEFT: 4px;
    padding-right: 4px;
  }
</style>