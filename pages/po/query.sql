 SELECT * FROM
 (
 select pd.fk_barang, sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
 left  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
 WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
UNION
 select od.fk_barang,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
 left join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
 WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='masuk'
 
  SELECT * FROM
 (
 select pd.fk_barang, sum(pd.qty) as qty,cast('masuk' as char(5))as tipe from t_pembelian_detail pd
 left  join t_pembelian p ON p.id_pembelian=pd.fk_pembelian  
 WHERE p.tgl_batal='0000-00-00 00:00:00' GROUP BY pd.fk_barang
UNION
 select od.fk_barang,od.qty as qty,cast('keluar' as char(6))as tipe from t_delivery_order_detail od
 left join t_delivery_order o ON o.id_delivery_order=od.fk_delivery_order
 WHERE o.tgl_batal='0000-00-00 00:00:00' GROUP BY od.fk_barang) as STOK WHERE tipe='keluar'