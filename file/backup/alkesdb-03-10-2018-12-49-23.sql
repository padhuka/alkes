DROP TABLE t_area;

CREATE TABLE `t_area` (
  `id_area` varchar(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_area VALUES("03","SEMARANG");
INSERT INTO t_area VALUES("19","SOLO");
INSERT INTO t_area VALUES("24","YOGYAKARTA");



DROP TABLE t_bank;

CREATE TABLE `t_bank` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipe_transaksi` varchar(20) NOT NULL,
  `diterima_dari` text NOT NULL,
  `via_bayar` enum('Transfer','Debit Card','Credit Card','') DEFAULT NULL,
  `fk_partner_bank` varchar(20) NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_bank VALUES("BM_MH.180818.000001","2018-08-18 10:28:04","","BP CHANDAR","Debit Card","CIMB","SI_BR.180818.000001","330000","LUNAS","2018-08-18 10:28:04","batal");
INSERT INTO t_bank VALUES("BM_MH.180818.000002","2018-08-18 10:29:14","","w","Transfer","","SI_BR.180818.000001","330000","w","2018-08-18 10:29:14","batal");
INSERT INTO t_bank VALUES("BM_MH.180818.000003","2018-08-18 13:07:40","","erer","Transfer","","SI_BR.180818.000001","330000","rer","2018-08-18 13:07:40","BATAL");
INSERT INTO t_bank VALUES("BM_MH.180818.000004","2018-08-18 13:07:45","","rere","Transfer","","SI_BR.180818.000001","330000","re","2018-08-18 13:07:45","BATAL");



DROP TABLE t_barang;

CREATE TABLE `t_barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `fk_satuan` varchar(255) DEFAULT NULL,
  `fk_group` varchar(255) DEFAULT NULL,
  `harga_pokok` double NOT NULL,
  `harga_jual` double NOT NULL,
  `diskon` float NOT NULL,
  `ppn` float NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_barang VALUES("1674H","ETHILON SUTURE 30IN(75CM) 2-0 BLK","PCS","100029","42500","290000","0","10");
INSERT INTO t_barang VALUES("854T","CATGUT PLAIN 0 70CM CT","PCS","100033","42500","107900","0","10");
INSERT INTO t_barang VALUES("906T","CATGUT CHROMIC 2","PCS","100033","42500","87650","0","10");
INSERT INTO t_barang VALUES("983H","GUT CHROMIC SUTURE 54IN(135CM) 2-0 UND","PCS","100033","42500","89000","0","10");
INSERT INTO t_barang VALUES("H819T","CATGUT PLAIN 4/0 70CM FS-3","PCS","100033","42500","107900","0","10");
INSERT INTO t_barang VALUES("VCP341H","VICRYL PLUS SUTURE 27IN(70CM) 1 VIO","PCS","100023","42500","96700","0","10");
INSERT INTO t_barang VALUES("W11201","CATGUT CHROM 150CM M3","PCS","100033","42500","290000","0","10");
INSERT INTO t_barang VALUES("W1620T","ETHILON BLU 45CM M1.5 4/0 PS-2 PRIME","PCS","100029","42500","96700","0","10");
INSERT INTO t_barang VALUES("W320","ETHILON BLU 45CM M2 3/0 FS","PCS","100029","42500","78000","0","10");
INSERT INTO t_barang VALUES("W526","ETHILON BLU 45CM M1 5/0 PC-3 PRIME","PCS","100029","42500","89000","0","10");
INSERT INTO t_barang VALUES("W57001","SILK BLK 3/0 75CM M2 SH","PCS","100032","42500","78000","0","10");
INSERT INTO t_barang VALUES("W8556","PROLENE BLU 90CM M1 5/0 RB-1","PCS","100026","42500","188920","0","10");
INSERT INTO t_barang VALUES("W8706","PROLENE BLU 75CM M0.7 6/0 C-1","PCS","100026","42500","87650","0","10");
INSERT INTO t_barang VALUES("W9451","VICRYL VIO 90CM M4 1 CTX","PCS","100018","42500","89000","0","10");
INSERT INTO t_barang VALUES("W9511T","VICRYL UND 45CM M2 3/0 PC-5 PRIME MP","PCS","100018","42500","78000","0","10");
INSERT INTO t_barang VALUES("W9560","VICRYL VIO 30CM M0.4 8/0 TG140-8","PCS","100018","42500","107900","0","10");
INSERT INTO t_barang VALUES("W9561","VICRYL VIO 30CM M0.5 7/0 TG140-8","PCS","100018","42500","188920","0","10");
INSERT INTO t_barang VALUES("W9890","VICRYL UND 75CM M2 3/0 FS","PCS","100018","42500","96700","0","10");
INSERT INTO t_barang VALUES("Y489G","MONOCRYL SUTURE 18IN(45CM) 6-0 UND","PCS","100020","42500","188920","0","10");



DROP TABLE t_cash;

CREATE TABLE `t_cash` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `diterima_dari` text NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_cash VALUES("KM_MH.060918.000002","2018-09-06 00:00:00","andi","SI_MH.290818.000001","300000","lunas bla2222","0000-00-00 00:00:00","");
INSERT INTO t_cash VALUES("KM_MH.180818.000001","2018-08-18 00:00:00","BP CHANDRA","SI_BR.180818.000001","330000","LUNAS","2018-08-18 13:07:31","BATAL");



DROP TABLE t_city;

CREATE TABLE `t_city` (
  `id_city` varchar(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_city VALUES("BTG","BATANG");
INSERT INTO t_city VALUES("MG","MAGELANG");
INSERT INTO t_city VALUES("SLO","SOLO");
INSERT INTO t_city VALUES("SMG","SEMARANG");
INSERT INTO t_city VALUES("SRG","SRAGEN");
INSERT INTO t_city VALUES("WUNI","KEDUNGWUNI");
INSERT INTO t_city VALUES("YK","YOGYAKARTA");



DROP TABLE t_customer;

CREATE TABLE `t_customer` (
  `id_customer` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `fk_city` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `npwp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_customer VALUES("CUST_MH.300818.000001","BP. RB SEMAR","BABARSARI TB XVI NO.13B RT.18, RW. 05 DEPOK,SLEMAN","YK","0","0","0","");
INSERT INTO t_customer VALUES("CUST_MH.300818.000002","HERMINA RSIA","JL. PANDANARAN 24","SMG","0","0","0","");



DROP TABLE t_delivery_order;

CREATE TABLE `t_delivery_order` (
  `id_delivery_order` varchar(20) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_penjualan` varchar(255) DEFAULT NULL,
  `fk_customer` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `total_gross_jual_barang` double DEFAULT NULL,
  `total_diskon_jual_barang` double DEFAULT NULL,
  `total_netto_jual_barang` double DEFAULT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text,
  PRIMARY KEY (`id_delivery_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_delivery_order VALUES("DO_BR.300818.000001","2018-08-30 11:44:11","SO_MH.300818.000001","CUST_MH.300818.000001","","379000","0","379000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_BR.310818.000002","2018-08-31 05:10:07","SO_MH.310818.000002","CUST_MH.300818.000002","","89000","0","89000","0000-00-00 00:00:00","");



DROP TABLE t_delivery_order_detail;

CREATE TABLE `t_delivery_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_delivery_order` varchar(255) DEFAULT NULL,
  `fk_barang` varchar(255) DEFAULT NULL,
  `gross_jual_barang` double DEFAULT NULL,
  `diskon_jual_barang` double DEFAULT NULL,
  `netto_jual_barang` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO t_delivery_order_detail VALUES("1","DO_BR.300818.000001","W11201","290000","0","290000","1");
INSERT INTO t_delivery_order_detail VALUES("2","DO_BR.300818.000001","W526","89000","0","89000","1");
INSERT INTO t_delivery_order_detail VALUES("3","DO_BR.310818.000002","983H","89000","0","89000","1");



DROP TABLE t_divisi;

CREATE TABLE `t_divisi` (
  `id_divisi` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_divisi VALUES("01","ETHICON PRODUCTS");



DROP TABLE t_group;

CREATE TABLE `t_group` (
  `id_group` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_minor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_group VALUES("100018","VICRYL","8SA");
INSERT INTO t_group VALUES("100020","MONOCRYL","8SA");
INSERT INTO t_group VALUES("100023","VICRYL PLUS","8SB");
INSERT INTO t_group VALUES("100026","PROLENE","8SC");
INSERT INTO t_group VALUES("100029","ETHILON","8SD");
INSERT INTO t_group VALUES("100032","SILK","8SE");
INSERT INTO t_group VALUES("100033","CATGUT","8SE");



DROP TABLE t_kwitansi;

CREATE TABLE `t_kwitansi` (
  `no_kwitansi` varchar(20) NOT NULL,
  `tgl_kwitansi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_delivery_order` varchar(20) NOT NULL DEFAULT '',
  `total_gross_barang` double DEFAULT NULL,
  `total_diskon_barang` double DEFAULT NULL,
  `total_netto_barang` double DEFAULT NULL,
  `total_ppn_kwitansi` double NOT NULL,
  `total_kwitansi` double NOT NULL,
  `keterangan_batal` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_kwitansi VALUES("SI_MH.290818.000001","2018-08-29 10:34:28","DO_BR.160818.000001","300000","0","300000","0","300000","","2018-08-29 10:34:28");
INSERT INTO t_kwitansi VALUES("SI_MH.290818.000002","2018-08-29 10:35:53","DO_BR.160818.000001","300000","0","300000","30000","330000","","2018-08-29 10:35:53");
INSERT INTO t_kwitansi VALUES("SI_MH.290818.000003","2018-08-29 10:37:02","DO_BR.160818.000001","300000","0","300000","0","300000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300818.000004","2018-08-30 11:44:52","DO_BR.300818.000001","379000","0","379000","37900","416900","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.310818.000005","2018-08-31 05:10:38","DO_BR.310818.000002","89000","0","89000","8900","97900","","0000-00-00 00:00:00");



DROP TABLE t_marketing;

CREATE TABLE `t_marketing` (
  `id_marketing` varchar(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  `fk_area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_marketing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_marketing VALUES("01","FAHMI KHOTIB-JOGJA","24");
INSERT INTO t_marketing VALUES("02","YENNI WAHYUNI","03");
INSERT INTO t_marketing VALUES("03","KRISTIANTONO","03");
INSERT INTO t_marketing VALUES("04","FAHMI KHOTIB-SOLO","19");



DROP TABLE t_mayor;

CREATE TABLE `t_mayor` (
  `id_mayor` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_divisi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mayor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_mayor VALUES("8B1","SUTURES","01");



DROP TABLE t_minor;

CREATE TABLE `t_minor` (
  `id_minor` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_mayor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_minor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_minor VALUES("8SA","NON-PLUS SAS","8B1");
INSERT INTO t_minor VALUES("8SB","PLUS SAS","8B1");
INSERT INTO t_minor VALUES("8SC","CV SUTURES","8B1");
INSERT INTO t_minor VALUES("8SD","OTHER NON-ABS SUTURES","8B1");
INSERT INTO t_minor VALUES("8SE","NATURAL SUTURES","8B1");



DROP TABLE t_partner_bank;

CREATE TABLE `t_partner_bank` (
  `id_partner_bank` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_partner_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_partner_bank VALUES("CIMB","PT. CIMB NIAGA","0271898989","SURAKARTA");
INSERT INTO t_partner_bank VALUES("MANDIRI","PT. BANK MANDIRI","024613323","SEMARANG");



DROP TABLE t_pembelian;

CREATE TABLE `t_pembelian` (
  `id_pembelian` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `no_delivery_order` varchar(10) NOT NULL DEFAULT '',
  `fk_supplier` varchar(255) DEFAULT NULL,
  `no_ref` varchar(50) NOT NULL DEFAULT '',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `total_gross_beli_barang` double DEFAULT NULL,
  `total_diskon_beli_barang` double DEFAULT NULL,
  `total_netto_beli_barang` double NOT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_pembelian VALUES("PO_MH.300818.000001","2018-08-30 11:40:55","1","HPM","","","468000","0","468000","0000-00-00 00:00:00","");



DROP TABLE t_pembelian_detail;

CREATE TABLE `t_pembelian_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pembelian` varchar(255) DEFAULT NULL,
  `fk_barang` varchar(255) DEFAULT NULL,
  `gross_beli_barang` double DEFAULT NULL,
  `diskon_barang` float DEFAULT NULL,
  `diskon_beli_barang` double DEFAULT NULL,
  `netto_beli_barang` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO t_pembelian_detail VALUES("1","PO_MH.300818.000001","W11201","290000","0","0","290000","1");
INSERT INTO t_pembelian_detail VALUES("2","PO_MH.300818.000001","W526","89000","0","0","89000","1");
INSERT INTO t_pembelian_detail VALUES("3","PO_MH.300818.000001","983H","89000","0","0","89000","1");



DROP TABLE t_penjualan;

CREATE TABLE `t_penjualan` (
  `id_penjualan` varchar(50) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_customer` varchar(255) DEFAULT NULL,
  `fk_marketing` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total_gross_jual_barang` double DEFAULT NULL,
  `total_diskon_jual_barang` double DEFAULT NULL,
  `total_netto_jual_barang` double DEFAULT NULL,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text,
  `approved` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_penjualan VALUES("SO_MH.300818.000001","2018-08-30 00:00:00","CUST_MH.300818.000001","01","","379000","0","379000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.310818.000002","2018-08-31 00:00:00","CUST_MH.300818.000002","01","scepatnya","89000","0","89000","0000-00-00 00:00:00","","1");



DROP TABLE t_penjualan_detail;

CREATE TABLE `t_penjualan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_penjualan` varchar(255) DEFAULT NULL,
  `fk_barang` varchar(255) DEFAULT NULL,
  `gross_jual_barang` double DEFAULT NULL,
  `diskon_jual_barang` double DEFAULT NULL,
  `netto_jual_barang` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO t_penjualan_detail VALUES("1","SO_MH.300818.000001","W11201","290000","0","290000","1");
INSERT INTO t_penjualan_detail VALUES("2","SO_MH.300818.000001","W526","89000","0","89000","1");
INSERT INTO t_penjualan_detail VALUES("4","SO_MH.310818.000002","983H","89000","0","89000","1");



DROP TABLE t_rekapkwitansi;

CREATE TABLE `t_rekapkwitansi` (
  `id_rekapkwitansi` varchar(255) NOT NULL DEFAULT '',
  `keterangan` text,
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text,
  PRIMARY KEY (`id_rekapkwitansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_rekapkwitansi VALUES("RK_MH.010918.000001","123","2018-09-01 07:28:47","0000-00-00 00:00:00","");
INSERT INTO t_rekapkwitansi VALUES("RK_MH.010918.000002","rekap2","2018-09-01 07:31:25","0000-00-00 00:00:00","");
INSERT INTO t_rekapkwitansi VALUES("RK_MH.010918.000003","","2018-09-01 07:32:50","0000-00-00 00:00:00","");
INSERT INTO t_rekapkwitansi VALUES("RK_MH.010918.000004","","2018-09-01 10:27:04","0000-00-00 00:00:00","");



DROP TABLE t_rekapkwitansi_detail;

CREATE TABLE `t_rekapkwitansi_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_rekapkwitansi` varchar(255) DEFAULT NULL,
  `fk_kwitansi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO t_rekapkwitansi_detail VALUES("1","RK_MH.010918.000001","SI_MH.300818.000004");
INSERT INTO t_rekapkwitansi_detail VALUES("2","RK_MH.010918.000001","SI_MH.310818.000005");
INSERT INTO t_rekapkwitansi_detail VALUES("3","RK_MH.010918.000003","SI_MH.290818.000002");
INSERT INTO t_rekapkwitansi_detail VALUES("4","RK_MH.010918.000003","SI_MH.290818.000003");
INSERT INTO t_rekapkwitansi_detail VALUES("5","RK_MH.010918.000004","SI_MH.290818.000003");



DROP TABLE t_satuan;

CREATE TABLE `t_satuan` (
  `id_satuan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_satuan VALUES("PCS","PCS");



DROP TABLE t_status_so;

CREATE TABLE `t_status_so` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_penjualan` varchar(25) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('PROSES SO','PROSES DO','CETAK KWITANSI','LUNAS') DEFAULT 'PROSES SO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO t_status_so VALUES("1","SO_MH.290818.000003","2018-08-29 08:22:21","PROSES SO");
INSERT INTO t_status_so VALUES("2","SO_MH.160818.000001","2018-08-29 10:14:28","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("3","SO_MH.160818.000001","2018-08-29 10:17:19","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("4","SO_MH.160818.000001","2018-08-29 10:19:11","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("5","SO_MH.160818.000001","2018-08-29 10:33:56","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("6","SO_MH.160818.000001","2018-08-29 10:34:42","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("7","SO_MH.160818.000001","2018-08-29 10:37:02","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("8","SO_MH.300818.000001","2018-08-30 11:43:01","PROSES SO");
INSERT INTO t_status_so VALUES("9","SO_MH.300818.000001","2018-08-30 11:44:12","PROSES DO");
INSERT INTO t_status_so VALUES("10","SO_MH.300818.000001","2018-08-30 11:44:52","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("11","SO_MH.310818.000002","2018-08-31 05:08:12","PROSES SO");
INSERT INTO t_status_so VALUES("12","SO_MH.310818.000002","2018-08-31 05:10:07","PROSES DO");
INSERT INTO t_status_so VALUES("13","SO_MH.310818.000002","2018-08-31 05:10:38","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("14","","2018-09-06 20:11:56","LUNAS");
INSERT INTO t_status_so VALUES("15","SO_MH.300818.000001","2018-09-06 20:13:25","LUNAS");



DROP TABLE t_stok_akhir;

CREATE TABLE `t_stok_akhir` (
  `fk_barang` varchar(20) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `masuk` int(11) DEFAULT NULL,
  `keluar` int(11) DEFAULT NULL,
  `hpp` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_stok_akhir VALUES("25","2018-08-16 14:01:15","1","","300000","");
INSERT INTO t_stok_akhir VALUES("4","2018-08-16 14:01:21","1","","120000","");
INSERT INTO t_stok_akhir VALUES("25","2018-08-16 14:29:40","1","","300000","");



DROP TABLE t_supplier;

CREATE TABLE `t_supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `npwp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_supplier VALUES("HPM","HONDA PROSPECT MOTOR","JAKARTA","","");
INSERT INTO t_supplier VALUES("ABC","PT ABAC","JAKARTA","","");



DROP TABLE t_user;

CREATE TABLE `t_user` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO t_user VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","danang","111","Admin");



