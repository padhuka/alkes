<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=reportso.xls");
 
// Tambahkan table
//include 'data.php';

?>
								      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table width="100%" align="center" border="0">
                                   <tr>
                                    <td width="50%"><u style="font-size: 20px;"><strong>PT. MH Medika</strong><br>
                                    </u>
                                      Jl. Sumbing Rt.03 Rw.09 Mojosongo<br>
                                      Surakarta Tlp. 0271-9224110, 081229875951<br>
                                    </td>                                   
                                  </tr>                                 
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan SO</center></span>
                                <br>
      <table id="cash" border="1">
                <thead class="thead-light">
                <tr align="center">
                          <th>TGL SO</th>
                          <th>AREA</th>
                          <th>BRANCH</th>
                          <th>MARKETING</th>
                          <th>BILLING_DATE</th>
                          <th>BILL_DOCUMENT</th>
                          <th>DELIVERY_NO</th>
                          <th>SALES_ORDER</th>
                          <th>END_USER</th>
                          <th>END_USER_NAME</th>
                          <th>CUSTOMER_ADDRESS</th>
                          <th>CUST_CITY</th>
                          <th>NPWP</th>
                          <th>MATERIAL_NAME</th>
                          <th>MATDESCRIP</th>
                          <th>SALESUNIT</th>
                          <th>HPP</th>
                          <th>QTY</th>
                          <th>PRICELIST</th>
                          <th>DISCOUNT</th>
                          <th>PRICELISTxQTY</th>
                          <th>DISCOUNT RP</th>
                          <th>DPP</th>
                          <th>PPN</th>
                          <th>HARGA+PPN</th>
                          <th>TOTAL HPP</th>
                          <th>MARGIN</th>
                          <th>DIVISINAME</th>
                          <th>MAYOR</th>
                          <th>MAJORNAME</th>
                          <th>MINOR</th>
                          <th>MINORNAME</th>
                          <th>GROUP</th>
                          <th>GROUPNAME</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                    $sqlcatat = "SELECT p.tgl,a.id_area as AREA,a.nama as BRANCH,mk.nama as MARKETING,DATE_FORMAT(k.tgl_kwitansi,'%d.%m.%Y') as BILLING_DATE,
                                    k.no_kwitansi as BILL_DOCUMENT,d.id_delivery_order as DELIVERY_NO,p.id_penjualan as SALES_ORDER,
                                    c.id_customer as END_USER,c.nama as END_USER_NAME,c.alamat as CUSTOMER_ADDRESS,ct.nama as CUST_CITY , c.npwp as NPWP,
                                    b.id_barang as MATERIAL_NAME,b.nama as MATDESCRIP,s.nama SALES_UNIT,
                                    b.harga_pokok as HPP,pd.qty as QTY,pd.gross_jual_barang as PRICE_LIST,pd.diskon_jual_barang as DISCOUNT,(pd.qty*pd.gross_jual_barang) as 
                                    PRICELISTxQTY,(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100) as DISCOUNT_RP,(pd.qty*pd.gross_jual_barang)-(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100) as DPP, 
                                    10*((pd.qty*pd.gross_jual_barang)-(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100))/100 as PPN,
                                    ((pd.qty*pd.gross_jual_barang)-(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100))+(10*((pd.qty*pd.gross_jual_barang)-(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100))/100) as HARGA_PPN,
                                    (b.harga_pokok*pd.qty) TOTAL_HPP,
                                    (((pd.qty*pd.gross_jual_barang)-(pd.diskon_jual_barang*pd.qty*pd.gross_jual_barang/100))-(b.harga_pokok*pd.qty)) as MARGIN,
                                    dv.nama as DIVISINAME,my.id_mayor as MAJOR, my.nama as MAJORNAME, m.id_minor as MINOR,m.nama as MINORNAME,g.id_group as GRUP, g.nama as GROUPNAME FROM t_penjualan p
                                    LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                    LEFT JOIN t_city ct ON ct.id_city=c.fk_city
                                    LEFT JOIN t_marketing mk ON p.fk_marketing=mk.id_marketing
                                    LEFT JOIN t_area a ON a.id_area=mk.fk_area
                                    LEFT JOIN t_penjualan_detail pd ON p.id_penjualan=pd.fk_penjualan
                                    LEFT JOIN t_barang b ON pd.fk_barang=b.id_barang
                                    LEFT JOIN t_satuan s ON b.fk_satuan=s.id_satuan
                                    LEFT JOIN t_group g ON g.id_group=b.fk_group
                                    LEFT JOIN t_minor m ON m.id_minor=g.fk_minor
                                    LEFT JOIN t_mayor my ON my.id_mayor=m.fk_mayor
                                    LEFT JOIN t_divisi dv ON dv.id_divisi=my.fk_divisi
                                    LEFT JOIN t_delivery_order d ON  d.fk_penjualan=p.id_penjualan
                                    LEFT JOIN t_kwitansi k ON k.fk_delivery_order=d.id_delivery_order WHERE p.tgl_batal='0000:00:00 00:00:00' AND substring(p.tgl,1,10)>='$tgl1' AND substring(p.tgl,1,10)<='$tgl2'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>                      
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['AREA'];?></td>
                          <td ><?php echo $catat['BRANCH'];?></td>
                          <td ><?php echo $catat['MARKETING'];?></td>  
                          <td ><?php echo $catat['BILLING_DATE'];?></td>
                          <td ><?php echo $catat['BILL_DOCUMENT'];?></td>  
                          <td ><?php echo $catat['DELIVERY_NO'];?></td>
                          <td ><?php echo $catat['SALES_ORDER'];?></td>  
                          <td ><?php echo $catat['END_USER'];?></td> 
                          <td ><?php echo $catat['END_USER_NAME'];?></td>
                          <td ><?php echo $catat['CUSTOMER_ADDRESS'];?></td>
                          <td ><?php echo $catat['CUST_CITY'];?></td>
                          <td ><?php echo $catat['NPWP'];?></td>  
                          <td ><?php echo $catat['MATERIAL_NAME'];?></td>
                          <td ><?php echo $catat['MATDESCRIP'];?></td>
                          <td ><?php echo $catat['SALES_UNIT'];?></td>
                          <td ><?php echo $catat['HPP'];?></td>  
                          <td ><?php echo $catat['QTY'];?></td>  
                          <td ><?php echo $catat['PRICE_LIST'];?></td> 
                          <td ><?php echo $catat['DISCOUNT'];?></td> 
                          <td ><?php echo $catat['PRICELISTxQTY'];?></td>
                          <td ><?php echo $catat['DISCOUNT_RP'];?></td>
                          <td ><?php echo $catat['DPP'];?></td> 
                          <td ><?php echo $catat['PPN'];?></td>      
                          <td ><?php echo $catat['HARGA_PPN'];?></td>
                          <td ><?php echo $catat['TOTAL_HPP'];?></td> 
                          <td ><?php echo $catat['MARGIN'];?></td>
                          <td ><?php echo $catat['DIVISINAME'];?></td>
                          <td ><?php echo $catat['MAJOR'];?></td>
                          <td ><?php echo $catat['MAJORNAME'];?></td>
                          <td ><?php echo $catat['MINOR'];?></td>
                          <td ><?php echo $catat['MINORNAME'];?></td>
                          <td ><?php echo $catat['GRUP'];?></td>
                          <td ><?php echo $catat['GROUPNAME'];?></td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>