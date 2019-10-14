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
  `tgl_transaksi` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `tipe_transaksi` varchar(20) NOT NULL,
  `diterima_dari` text NOT NULL,
  `via_bayar` enum('Transfer','Debit Card','Credit Card','') DEFAULT NULL,
  `fk_partner_bank` varchar(20) NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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

INSERT INTO t_barang VALUES("","","","","0","0","0","0");
INSERT INTO t_barang VALUES("025510","Stomahesive Protective Powder ( 28,3 Gram )","PCS","200029","252000","0","0","0");
INSERT INTO t_barang VALUES("101090","CAVI WIPES","CANISTER","","0","0","0","0");
INSERT INTO t_barang VALUES("125263","Cut-to-Fit,Stomahesive®Skin barrier; with flexible tan collar 38 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("125264","Cut-to-Fit,Stomahesive®Skin barrier; with flexible tan collar 45 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("125265","Cut-to-Fit,Stomahesive®Skin barrier; with flexible tan collar 57 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("125266","Cut-to-Fit,Stomahesive®Skin barrier; with flexible tan collar 70 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("168117","Kaltostat ( 2 gram )","PCS","200019","132720","0","0","0");
INSERT INTO t_barang VALUES("168212","Kaltostat ( 7,5 cm x 12 cm )","PCS","200019","106050","0","0","0");
INSERT INTO t_barang VALUES("168214","Kaltostat ( 10 cm x 20 cm )","PCS","200019","244020","0","0","0");
INSERT INTO t_barang VALUES("177902","Aquacel ( 10 cm x  10 cm )","PCS","200017","136080","0","0","0");
INSERT INTO t_barang VALUES("177903","Aquacel ( 15 cm x 15 cm )","PCS","200017","272160","0","0","0");
INSERT INTO t_barang VALUES("183910","Stomahesive Paste ( 56,7 Gram )","PCS","200029","331800","0","0","0");
INSERT INTO t_barang VALUES("187660","Duoderm CGF ( 10 x 10 cm )","PCS","200021","57120","0","0","0");
INSERT INTO t_barang VALUES("187662","Duoderm CGF ( 20 x 20 cm )","PCS","200021","187662","0","0","0");
INSERT INTO t_barang VALUES("187932","Duoderm Extra Thin Spots ( 4,4 cm x 3,8 cm )","PCS","200022","25200","0","0","0");
INSERT INTO t_barang VALUES("187955","Duoderm Extra Thin ( 10 cm x 10 cm )","PCS","200022","51240","0","0","0");
INSERT INTO t_barang VALUES("187961","Duoderm Extra Thin ( 5 cm x 20 cm )","PCS","200022","187961","0","0","0");
INSERT INTO t_barang VALUES("187987","Duoderm Hydroactive Gel ( 30 gram )","PCS","200020","104300","0","0","0");
INSERT INTO t_barang VALUES("187990","Duoderm Hydroactive Gel ( 15 gram )","PCS","200020","59430","0","0","0");
INSERT INTO t_barang VALUES("20922","Litte Ones® One-Piece Drainable Pouch with Solid Stomahesive® Skin Barrier,Cut-to-Fit","PCS","200026","144900","0","0","0");
INSERT INTO t_barang VALUES("22771","Cut-to-fit,Stomahesive Skin barrier and tape collar,12\" pounch with 1- sided comfort panel and tail clip","PCS","200024","67410","0","0","0");
INSERT INTO t_barang VALUES("3102","Silk 5/0 45 cm black HR-13","SCH","100018","98797","171820","0","0");
INSERT INTO t_barang VALUES("3104","Silk 4/0 75 cm black HR-18","SCH","100018","43930","76400","0","0");
INSERT INTO t_barang VALUES("3108","Silk   3/0 75 cm black HR-19","SCH","100018","43930","76400","0","0");
INSERT INTO t_barang VALUES("3115","Silk 2/0 75 cm black HR-27","SCH","100018","40768","70900","0","0");
INSERT INTO t_barang VALUES("3131","Silk 1 75 cm black HR-35","SCH","100018","40768","70900","0","0");
INSERT INTO t_barang VALUES("3312","Silk 6/0 45 cm black DS-12","SCH","100018","44908","78100","0","0");
INSERT INTO t_barang VALUES("3319","Silk 2/0 75 cm black HR-30","SCH","100018","40768","70900","0","0");
INSERT INTO t_barang VALUES("3335","Silk 4/0 45 cm black DS-25","SCH","100018","43930","76400","0","0");
INSERT INTO t_barang VALUES("3336","Silk  3/0 75 cm black DS-25","PCS","100018","43930","76400","0","0");
INSERT INTO t_barang VALUES("3344","Silk 3/0 45 cm black DS-25","SCH","100018","42148","73300","0","0");
INSERT INTO t_barang VALUES("355","Silk 5/0 45 cm black HR-10","SCH","100018","98797","171820","0","0");
INSERT INTO t_barang VALUES("401501","12\"Drainable pouch with 2-sided comfort panel and Tail Clip ( STANDART ) 38 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401502","12\"Drainable pouch with 2-sided comfort panel and Tail Clip ( STANDART ) 45 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401504","12\"Drainable pouch with 2-sided comfort panel and Tail Clip ( STANDART ) 70 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401506","10\"Drainable pouch with 2-sided comfort panel and Tail Clip ( SMALL ) 38 mm","PCS","200028","60480","0","0","0");
INSERT INTO t_barang VALUES("401507","10\"Drainable pouch with 2-sided comfort panel and Tail Clip ( SMALL ) 45 mm","PCS","200028","60480","0","0","0");
INSERT INTO t_barang VALUES("401508","10\"Drainable pouch with 2-sided comfort panel and Tail Clip ( SMALL ) 57 mm","PCS","200028","60480","0","0","0");
INSERT INTO t_barang VALUES("401509","10\"Drainable pouch with 2-sided comfort panel and Tail Clip ( SMALL ) 70 mm","PCS","200028","60480","0","0","0");
INSERT INTO t_barang VALUES("401511","12\"Drainable pouch with 1-sided comfort panel and Tail Clip 38 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401512","12\"Drainable pouch with 1-sided comfort panel and Tail Clip 45 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401513","12\"Drainable pouch with 1-sided comfort panel and Tail Clip 57 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401514","12\"Drainable pouch with 1-sided comfort panel and Tail Clip 70 mm","PCS","200028","69300","0","0","0");
INSERT INTO t_barang VALUES("401521","8\"Closed-End Pounch with 2-sided comfort panel 38 mm","PCS","200028","41440","0","0","0");
INSERT INTO t_barang VALUES("401523","8\"Closed-End Pounch with 2-sided comfort panel 57 mm","PCS","200028","41440","0","0","0");
INSERT INTO t_barang VALUES("401524","8\"Closed-End Pounch with 2-sided comfort panel 70 mm","PCS","200028","41440","0","0","0");
INSERT INTO t_barang VALUES("401525","8\"Closed-End Pounch with 2-sided comfort panel and Filter 38 mm","PCS","200028","45640","0","0","0");
INSERT INTO t_barang VALUES("401526","8\"Closed-End Pounch with 2-sided comfort panel and Filter 45 mm","PCS","200028","45640","0","0","0");
INSERT INTO t_barang VALUES("401527","8\"Closed-End Pounch with 2-sided comfort panel and Filter 70 mm","PCS","200028","45640","0","0","0");
INSERT INTO t_barang VALUES("401543","Standart:10\"Urostomy pouch with 1-sided comfort panel and Accuseal ® Tap with valve 38 mm","PCS","200028","108150","0","0","0");
INSERT INTO t_barang VALUES("401544","Standart:10\"Urostomy pouch with 1-sided comfort panel and Accuseal ® Tap with valve 45 mm","PCS","200028","108150","0","0","0");
INSERT INTO t_barang VALUES("401545","Standart:10\"Urostomy pouch with 1-sided comfort panel and Accuseal ® Tap with valve 57 mm","PCS","200028","108150","0","0","0");
INSERT INTO t_barang VALUES("401546","Standart:10\"Urostomy pouch with 1-sided comfort panel and Accuseal ® Tap with valve 70- mm","PCS","200028","108150","0","0","0");
INSERT INTO t_barang VALUES("401574","Cut-to-Fit,Stomahesive®Skin barrier;no tape collar 38 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("401575","Cut-to-Fit,Stomahesive®Skin barrier;no tape collar 45 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("401576","Cut-to-Fit,Stomahesive®Skin barrier;no tape collar 57 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("401577","Cut-to-Fit,Stomahesive®Skin barrier;no tape collar 70 mm","PCS","200027","126840","0","0","0");
INSERT INTO t_barang VALUES("4033770","Aquacel Ag ( 2 cm x 45 cm )","PCS","200017","171780","0","0","0");
INSERT INTO t_barang VALUES("403708","Aquacel Ag (10 cm x 10 cm )","PCS","200018","204150","0","0","0");
INSERT INTO t_barang VALUES("403710","Aquacel Ag ( 15 cm x 15 cm )","PCS","200018","408300","0","0","0");
INSERT INTO t_barang VALUES("403771","Aquacel Ag ( 2 cm x 45 cm)","PCS","200018","257670","0","0","0");
INSERT INTO t_barang VALUES("403786","Aquacel Ag Burn ( 13 cm x 10 cm )","PCS","200016","183000","0","0","0");
INSERT INTO t_barang VALUES("403787","Aquacel Ag Burn ( 17 cm x 15 cm )","PCS","200016","298000","0","0","0");
INSERT INTO t_barang VALUES("4051522","8\"Closed-End Pounch with 2-sided comfort panel 45 mm","PCS","200028","41400","0","0","0");
INSERT INTO t_barang VALUES("412011","Aquacel Ag Surgical ( 9 x 25cm )","PCS","200015","320000","0","0","0");
INSERT INTO t_barang VALUES("412012","Aquacel Aq Surgical ( 9 x 35 cm )","PCS","200015","420000","0","0","0");
INSERT INTO t_barang VALUES("413154","Cut-to-Fit,Durahesive®Skin barrier;no tape collar 38 mm","PCS","200027","166740","0","0","0");
INSERT INTO t_barang VALUES("413155","Cut-to-Fit,Durahesive®Skin barrier;no tape collar 45 mm","PCS","200027","166740","0","0","0");
INSERT INTO t_barang VALUES("413156","Cut-to-Fit,Durahesive®Skin barrier;no tape collar 57 mm","PCS","200027","166740","0","0","0");
INSERT INTO t_barang VALUES("413157","Cut-to-Fit,Durahesive®Skin barrier;no tape collar 70 mm","PCS","200027","166740","0","0","0");
INSERT INTO t_barang VALUES("4200000000-aks","Semillas Nasal Cannula Anak","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("4200000000-aks-00059","Semillas Nasal Cannula Dewasa","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("420591","Stomadress Plus Opaque","PCS","200023","43785","0","0","0");
INSERT INTO t_barang VALUES("420592","Stomadress Plus Transparent","PCS","200023","43785","0","0","0");
INSERT INTO t_barang VALUES("420619","Aquacel Foam Adhesive ( 12,5 cm x 12,5 cm )","PCS","200013","114500","0","0","0");
INSERT INTO t_barang VALUES("420621","Aquacel Foam Adhesive ( 17,5 cm x 17,5 cm )","PCS","200013","214000","0","0","0");
INSERT INTO t_barang VALUES("420623","Aquacel Foam Adhesive ( 21 cm x 21 cm )","PCS","200013","305000","0","0","0");
INSERT INTO t_barang VALUES("420633","Aquacel Foam Non-Adhesive  ( 10 cm x 10 cm )","PCS","200014","81000","0","0","0");
INSERT INTO t_barang VALUES("420635","Aquacel Foam Non-Adhesive  ( 15 cm x 15 cm )","PCS","200014","167000","0","0","0");
INSERT INTO t_barang VALUES("420636","Aquacel Foam Non-Adhesive  ( 20 cm x 20 cm )","PCS","200014","214000","0","0","0");
INSERT INTO t_barang VALUES("420673","Aquacel Extra ( 15 cm x 15 cm )","PCS","200011","272160","0","0","0");
INSERT INTO t_barang VALUES("420676","Aquacel Extra ( 10 cm x 10 cm )","PCS","200012","204150","0","0","0");
INSERT INTO t_barang VALUES("420678","Aquacel Extra ( 15 cm x 15 cm )","PCS","200012","408300","0","0","0");
INSERT INTO t_barang VALUES("420680","Aquacel Foam Adhesive ( 10 cm x10 cm )","PCS","200013","99000","0","0","0");
INSERT INTO t_barang VALUES("429672","Aquacel Extra (10x10cm)","PCS","200011","136080","0","0","0");
INSERT INTO t_barang VALUES("CH01","Chroetil","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("CPE6585","Plastik Sampah Coklat 65x85","PCS","300026","0","0","0","0");
INSERT INTO t_barang VALUES("CPE658520","PE 65X85X0.4","PCS","300026","1338","2675","0","10");
INSERT INTO t_barang VALUES("DX0155","Polydox mono viol 4/0 75 cm violet HS-21","SCH","100021","55200","96000","0","0");
INSERT INTO t_barang VALUES("DX0201","Polydox mono viol 6/0 45 cm violet HS-12","SCH","100021","85100","148000","0","0");
INSERT INTO t_barang VALUES("DX0202","Polydox mono viol 5/0 45 cm violet DSM-12","SCH","100021","83950","146000","0","0");
INSERT INTO t_barang VALUES("DX0206","Polydox mono viol 3/0 45 cm violet DSM-15","SCH","100021","83950","146000","0","0");
INSERT INTO t_barang VALUES("DX0207","Polydox mono viol 4/0 70 cm violet DSM-19","SCH","100021","83950","146000","0","0");
INSERT INTO t_barang VALUES("DX0208","Polydox mono viol 3/0 70 cm violet DSM-19","SCH","100021","83950","146000","0","0");
INSERT INTO t_barang VALUES("DX0385","Polydox mono viol 0 90 cm  violet  HRX-40","SCH","100021","67850","118000","0","0");
INSERT INTO t_barang VALUES("DX0386","Polydox mono viol 1 90 cm  violet HRX-40","SCH","100021","67850","118000","0","0");
INSERT INTO t_barang VALUES("DX0387","Polydox mono viol 2 90 cm  violet  HRX-40","SCH","100021","67850","118000","0","0");
INSERT INTO t_barang VALUES("DX0390","Polydox mono viol 1 90 cm violet HRX-45","SCH","100021","69736","121280","0","0");
INSERT INTO t_barang VALUES("DX166","Polydox mono viol 3/0 75 cm violet HS-19","SCH","100021","55300","96000","0","0");
INSERT INTO t_barang VALUES("DX4035","Polydox mono viol loop 0 150 cm violet HRX-40","SCH","100015","79350","138000","0","0");
INSERT INTO t_barang VALUES("DX4040","Polydox mono viol loop 1 150 cm violet HRX-40","SCH","100015","87400","152000","0","0");
INSERT INTO t_barang VALUES("DX4535","Polydox mono viol loop 0 150 cm violet HRX-50","SCH","100015","87400","152000","0","0");
INSERT INTO t_barang VALUES("DX4540","Polydox mono viol loop 1 150 cm violet HRX-50","SCH","100015","87400","152000","0","0");
INSERT INTO t_barang VALUES("DX4550","Polydox mono viol loop 2 150 cm violet HRX-50","SCH","100015","87400","152000","0","0");
INSERT INTO t_barang VALUES("GC01","GLUCO DR","PAX","300036","0","0","0","0");
INSERT INTO t_barang VALUES("HHD21","Plastik Kresek HItam Uk. 21","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("HHD28","Plastik Kresek Hitam Uk.28","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("HHD4065KH","HD 40X65 KHARISMA","PCS","300023","368","735","0","10");
INSERT INTO t_barang VALUES("HHD4065L","HD 40X65 LORI","PCS","300023","358","715","0","10");
INSERT INTO t_barang VALUES("HHD60100","Plastik Sampah Hitam uk.60x100","PAX","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HHD8010","Plastik Sampah Hitam uk. 80x100","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HHD8010023","HD 80X100X0.3","PCS","300023","1435","2870","0","10");
INSERT INTO t_barang VALUES("HHDJUMBO","Plastik Jumbo Hitam","PCS","300023","1100","0","0","0");
INSERT INTO t_barang VALUES("HPE4060","Plastik Kresek Hitam HD 40X60","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HPE6010023","PE 60X100X0.4","PCS","300023","975","1950","0","10");
INSERT INTO t_barang VALUES("HPE6080","Plastik Sampah 60x80 Hitam","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HPE609025","PE 60X90X0.4","PCS","300023","895","1790","0","10");
INSERT INTO t_barang VALUES("HPE8010","Plastik Sampah Hitam 80x100","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HPE901210","PE 90X120X0.5","PCS","300023","2008","4015","0","10");
INSERT INTO t_barang VALUES("KHD015","Plastik Kresek Kuning Kecil Uk.15","PAX","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KHD4060","Plastik Kresek Jumbo Uk. 40x60","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KHD6070","Plastik Sampah Kuning HD 60x70","PCS","300024","800","0","0","0");
INSERT INTO t_barang VALUES("KPE4060","Plastik Kresek Kuning 40x60","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE6010","PLASTIK SAMPAH KUNING 60x100","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE6070","PLASTIK KUNING 60x70","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE608028","PE 60X80X0.4","PCS","300024","870","1740","0","10");
INSERT INTO t_barang VALUES("KPE8010","PLASTIK SAMPAH KUNING 80x100","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE8010017","PE 80X100X0.4","PCS","300024","1490","2980","0","10");
INSERT INTO t_barang VALUES("KT021","Plastik Kresek Tanggung Uk. 25","PAX","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KWB03710","Plastik Klip 7x10 BIRU","PAX","300029","22800","45600","0","10");
INSERT INTO t_barang VALUES("KWM03710","Plastik Klip 7x10 MERAH","PAX","300029","22800","45600","0","10");
INSERT INTO t_barang VALUES("LN0201","Chirasorb 6/0 45 cm natu DSM-12","SCH","100012","56178","97700","0","0");
INSERT INTO t_barang VALUES("LN0206","Chirasorb 5/0 45 cm natu DSM-15","SCH","100012","55660","96800","0","0");
INSERT INTO t_barang VALUES("LN0212","Chirasorb 4/0 70 cm Natu DSM-19","SCH","100012","55085","95800","0","0");
INSERT INTO t_barang VALUES("LN0223","Chirasorb 3/0 70 cm natu DSM-25","SCH","100012","55085","95800","0","0");
INSERT INTO t_barang VALUES("LN1201","Chirasorb 6/0 45 cm natu DS-12","SCH","100012","68172","118560","0","0");
INSERT INTO t_barang VALUES("LN1211","Chirasorb 4/0 70 cm natu DS-19","SCH","100012","54654","95050","0","0");
INSERT INTO t_barang VALUES("LN1232","Chirasorb 3/0 70 cm natu DS-25","SCH","100012","54654","95050","0","0");
INSERT INTO t_barang VALUES("LN1305","Chirasorb 5/0 70 cm viol DS-15","SCH","100012","66309","115320","0","0");
INSERT INTO t_barang VALUES("LN8201","Chirasorb 6/0 45 cm viol DSMC-13","SCH","100012","118163","67943","0","0");
INSERT INTO t_barang VALUES("LN8206","Chirasorb 5/0 45 cm natu DSMC-16","SCH","100012","67943","118163","0","0");
INSERT INTO t_barang VALUES("LN8216","Chirasorb 4/0 45 cm natu HR-19","SCH","100012","59081","102750","0","0");
INSERT INTO t_barang VALUES("LV0246","Chirasorb 6/0 45 Cm Viol HR-10","SCH","100012","65274","113520","0","0");
INSERT INTO t_barang VALUES("LV0248","Chirasorb 5/0 70 cm viol HR-10","SCH","100012","54395","94600","0","0");
INSERT INTO t_barang VALUES("LV0256","Chirasorb braided viol. 4/0 75 cm","SCH","100012","53130","92400","0","0");
INSERT INTO t_barang VALUES("LV0262","Chirasorb 3/0 70 cm viol HR-22","SCH","100012","53130","92400","0","0");
INSERT INTO t_barang VALUES("LV0263","Chirasorb  2/0 75 cm viol HR-22","SCH","100012","45125","90250","0","0");
INSERT INTO t_barang VALUES("LV0266","Chirasorb 3/0 70 cm viol HR-27","SCH","100012","55327","96220","0","0");
INSERT INTO t_barang VALUES("LV0273","Chirasorb 2/0 75 cm viol HR-30","SCH","100012","54510","94800","0","0");
INSERT INTO t_barang VALUES("LV0374","Chirasorb 2/0 90 cm viol HR-35","SCH","100012","55327","96220","0","0");
INSERT INTO t_barang VALUES("LV0385","Chirasorb 0 90 cm violet HR-40","SCH","100012","56877","98917","0","0");
INSERT INTO t_barang VALUES("LV0386","Chirasorb braided viol. 1 90 cm HRX 40","SCH","100012","46223","92446","0","0");
INSERT INTO t_barang VALUES("LV0390","Chirasorb 1 90 cm viol HRX-45","SCH","100012","55.456","96220","0","0");
INSERT INTO t_barang VALUES("LV0597","Chirasorb 2/0 90 cm viol HRT-37","SCH","100012","95865","55122","0","0");
INSERT INTO t_barang VALUES("LV0598","Chirasorb 0 90 cm viol HTR 40","SCH","100012","47933","95865","0","0");
INSERT INTO t_barang VALUES("LV0610","Chirasorb 2/0 70 cm viol 27","SCH","100012","63894","111120","0","0");
INSERT INTO t_barang VALUES("LV0685","Chirasorb 0 90 cm natu HRN-50","SCH","100012","59915","104200","0","0");
INSERT INTO t_barang VALUES("LV1292","Chirasorb 0 90 cm viol HRX-48","SCH","100012","62905","109400","0","0");
INSERT INTO t_barang VALUES("LV1576","Chirasorb 0 90 cm viol HR-40","SCH","100012","57987","100847","0","0");
INSERT INTO t_barang VALUES("MHD4060","Plastik Kresek Merah HD 40x60","PAX","300034","0","0","0","0");
INSERT INTO t_barang VALUES("MI1219","Ciralen 10/0 15 cm black 1x DLZ 6,4 / 200 μm","SCH","100014","102914","178980","0","0");
INSERT INTO t_barang VALUES("MI1220","Ciralen 10/0 23 cm black 2x DLZ 6,4 / 200 μm","SCH","100014","138933","241623","0","0");
INSERT INTO t_barang VALUES("MI1225","Silon 10/0 30 cm black 2x DZL 6,2 / 150 μm","SCH","100016","124588","216675","0","0");
INSERT INTO t_barang VALUES("MI1280","Ciralen 10/0 23 cm black 2x GLZ 16 / 150 μm","SCH","100016","123496","214776","0","0");
INSERT INTO t_barang VALUES("MI1430","Silk 8/0 30 cm black 2x HLZ 8 / 200 μm","SCH","100018","143750","250000","0","0");
INSERT INTO t_barang VALUES("MI1431","3/8 circle Silk 8/0 30 cm black 2x HLZ 8 / 200 μm","SCH","100018","143750","250000","0","0");
INSERT INTO t_barang VALUES("MI1433","Silk 9/0 30 cm black 2x DLZ 6,2 / 150 μm","SCH","100018","166750","290000","0","0");
INSERT INTO t_barang VALUES("MI2240","Silon 10/0 15 cm black 1x DR 6,5 / 150 μm","SCH","100016","110732","192578","0","0");
INSERT INTO t_barang VALUES("MI2246","Silon 10/0 13 cm black 1x DR 5,1 / 75 μm","SCH","100016","124588","216675","0","0");
INSERT INTO t_barang VALUES("MN0205","Monolac 5/0 45 cm natu DS-15","SCH","100013","66585","115800","0","0");
INSERT INTO t_barang VALUES("MN0211","Monolac 4/0 70 cm natu DS-19","SCH","100013","66585","115800","0","0");
INSERT INTO t_barang VALUES("MN0223","Monolac 3/0 70 cm natu DS-25","SCH","100013","64653","112440","0","0");
INSERT INTO t_barang VALUES("MV0251","Monolac 6/0 70 cm viol HR-13","SCH","100013","63618","110640","0","0");
INSERT INTO t_barang VALUES("MV0256","Monolac 5/0 70 cm viol HR-18","SCH","100013","64032","111360","0","0");
INSERT INTO t_barang VALUES("mv0262","Monolac 3/0 75 cm viol HR-22","SCH","100013","60.024","104390","0","0");
INSERT INTO t_barang VALUES("MV0266","Monolac 3/0 70 cm viol HR-27","SCH","100013","60024","104390","0","0");
INSERT INTO t_barang VALUES("MV0374","Monolac 2/0 90 cm viol HR-35","SCH","100013","65334","113625","0","0");
INSERT INTO t_barang VALUES("MV0378","Monolac 2/0 90 cm viol HRX-40","SCH","100013","62721","109080","0","0");
INSERT INTO t_barang VALUES("MV0381","Monolac 0 90 cm violet HRX-40","SCH","100013","54540","109080","0","0");
INSERT INTO t_barang VALUES("MV0386","Monolac 1 90 cm violet HRX-40","PCS","100013","62721","109080","0","0");
INSERT INTO t_barang VALUES("MV0394","Monolac 0 90 cm viol HRX-50","SCH","100013","65993","114770","0","0");
INSERT INTO t_barang VALUES("NC1005","Safety Box 5 L","PCS","300022","7500","15000","0","10");
INSERT INTO t_barang VALUES("NC1010","Safety Box 10 L","PCS","300022","9500","19000","0","10");
INSERT INTO t_barang VALUES("NC1012","Safety Box 12.5 L","PCS","300022","14250","28500","0","10");
INSERT INTO t_barang VALUES("PB1420","Plastik Bening uk.14x20x0,3","PAX","300030","28000","310000","0","0");
INSERT INTO t_barang VALUES("PC0611","Capro Mesh 6 cm x 11 cm","SCH","100020","373750","650000","0","0");
INSERT INTO t_barang VALUES("PC1015","Capro Mesh 10 cm x 15 cm","SCH","100020","600875","1045000","0","0");
INSERT INTO t_barang VALUES("PC1515","Capro Mesh 15 cm x 15 cm","SCH","100020","1063750","1850000","0","0");
INSERT INTO t_barang VALUES("PC3030","Capro Mesh 30 cm x 30 cm","SCH","100020","2271250","3950000","0","0");
INSERT INTO t_barang VALUES("PK85","Plastik Klip Obat 8x5","PAX","300030","0","0","0","0");
INSERT INTO t_barang VALUES("PKP01001","PLASTIK KRESEK PUTIH KECIL","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("PL03610","Plastik Klip Obat 6x10","PCS","300030","22000","33478","0","0");
INSERT INTO t_barang VALUES("PL03710","Plastik Klip Obat 7x10","PAX","300030","24000","43600","0","0");
INSERT INTO t_barang VALUES("PL03813","Plastik Klip Obat 8,7x13","PAX","300030","34000","66952","0","0");
INSERT INTO t_barang VALUES("PL041220","Plastik Klip 12x20","PAX","300030","86118","172235","0","10");
INSERT INTO t_barang VALUES("PL041320","Plastik Klip 13x20","PAX","300030","93148","186295","0","10");
INSERT INTO t_barang VALUES("PL0611","Chiralen Mesh Light  6 cm x 11 cm PL 0611","SCH","100019","284050","494000","0","0");
INSERT INTO t_barang VALUES("PL1015","Plastik Klip Obat 10x15","PAX","300030","0","0","0","0");
INSERT INTO t_barang VALUES("PL1117","Plastik Klip 11x17 Polos","PAX","300030","81550","0","0","0");
INSERT INTO t_barang VALUES("PL1120","Plastik Klip 11x20 Polos","PAX","300030","95500","0","0","0");
INSERT INTO t_barang VALUES("PL1515","Chiralen Mesh Light  15 cm x 15 cm PL 1515","SCH","100019","483000","840000","0","0");
INSERT INTO t_barang VALUES("PL1530","Chiralen Mesh Light  15 cm x 30 cm PL 1530","SCH","100019","710125","1235000","0","0");
INSERT INTO t_barang VALUES("PL3030","Chiralen Mesh Light  30 cm x 30 cm PL 3030","SCH","100019","1449000","2520000","0","0");
INSERT INTO t_barang VALUES("PLHD6010046","Plastik Loundry HD 60x100","PCS","200027","0","0","0","0");
INSERT INTO t_barang VALUES("PLHD80100","Plastik Loundry HD 80x100","PCS","","2090","0","0","0");
INSERT INTO t_barang VALUES("PLM03710","PLASTIK KLIP OBAT 7x10 Merah","PCS","300029","0","0","0","0");
INSERT INTO t_barang VALUES("PM0151","Chiralen Mesh 15 cm x 30 cm PM 0151","SCH","100022","718750","1250000","0","0");
INSERT INTO t_barang VALUES("PM0303","Chiralen Mesh 30 cm x 30 cm PM 0303","SCH","100022","1351250","2350000","0","0");
INSERT INTO t_barang VALUES("PM0611","Chiralen Mesh 6 cm x 11 cm PM 0611","SCH","100022","258750","450000","0","0");
INSERT INTO t_barang VALUES("PM1015","Chiralen Mesh 10 cm x 15 cm PM 1015","SCH","100022","373750","650000","0","0");
INSERT INTO t_barang VALUES("PP4108","Chiralen 5/0 75 cm blue DS-15","SCH","100014","68994","119990","0","0");
INSERT INTO t_barang VALUES("PP5001","Chiralen 6/0 45 cm blue DSM-12","SCH","100014","67275","117000","0","0");
INSERT INTO t_barang VALUES("PP5002","Chiralen 5/0 45 cm blue DSM-13","SCH","100014","58140","116280","0","0");
INSERT INTO t_barang VALUES("PP5006","Chiralen 6/0 15 cm blue DSM-15","SCH","100014","64136","111540","0","0");
INSERT INTO t_barang VALUES("PP5007","Chiralen Blue 4/0 45 cm Blue DSM-13","SCH","100014","56520","113040","0","0");
INSERT INTO t_barang VALUES("PP5011","Chiralen  3/0 45 cm blue DSM-25","SCH","100014","55770","111540","0","0");
INSERT INTO t_barang VALUES("PP5014","Chiralen 4/0 75 cm blue DSM-19","SCH","100014","53015","92200","0","0");
INSERT INTO t_barang VALUES("PP5015","Chiralen 3/0 75 blue cm DSM 19","SCH","100014","46100","92200","0","0");
INSERT INTO t_barang VALUES("PP5027","Chiralen 3/0 75 cm blue DSM-25","SCH","100014","53188","92500","0","0");
INSERT INTO t_barang VALUES("PP5101","Chiralen 6/0 45 cm blue DS-12","SCH","100014","68994","119990","0","0");
INSERT INTO t_barang VALUES("PP5116","Chiralen 3/0 75 cm blue DS-12","SCH","100014","57397","99820","0","0");
INSERT INTO t_barang VALUES("PP5205","Chiralen 7/0 45 cm blue 2x HR-8","SCH","100014","128892","224160","0","0");
INSERT INTO t_barang VALUES("PP5209","Chiralen 7/0 75 cm blue 2x HR-10","SCH","100014","128892","224160","0","0");
INSERT INTO t_barang VALUES("PP5218","Chiralen 6/0 45 cm blue 2x HR-13","SCH","100014","123441","214680","0","0");
INSERT INTO t_barang VALUES("PP5236","Chiralen 5/0 75 cm blue 2x HR-17","SCH","100014","91701","159480","0","0");
INSERT INTO t_barang VALUES("PP5270","Chiralen 3/0 90 cm blue 2x HR-30","SCH","100014","85974","149520","0","0");
INSERT INTO t_barang VALUES("PP5510","Chiralen 3/0 45 cm blue DS-19","SCH","100014","51578","89700","0","0");
INSERT INTO t_barang VALUES("PP5545","Chiralen 2/0 45 cm blue GR-45","SCH","100014","85330","193590","0","0");
INSERT INTO t_barang VALUES("PP6291","Chiralen 7/0 60 cm blue DRT-8","SCH","100014","130272","226560","0","0");
INSERT INTO t_barang VALUES("PP6312","Chiralen 6/0 60 cm blue DRT-13","SCH","100014","125580","218400","0","0");
INSERT INTO t_barang VALUES("PP8105","Chiralen 6/0 45 cm blue DSC-15","SCH","100014","65205","113400","0","0");
INSERT INTO t_barang VALUES("PP8509","Chiralen 5/0 45 cm blue DSC-20","SCH","100014","57054","99225","0","0");
INSERT INTO t_barang VALUES("PP8515","Chiralen 4/0 45 cm blue DSC-26","SCH","100014","54821","95340","0","0");
INSERT INTO t_barang VALUES("PPB1KG","Plastik PP Bening 1 Kg","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("PPK15","Plastik Kresek Putih Kecil uk.15x34","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("PPK21","Plastik Kresek Putih Tanggung","PAX","300034","0","0","0","0");
INSERT INTO t_barang VALUES("PPK35","Plastik Kresek Putih Besar","PAX","300034","0","0","0","0");
INSERT INTO t_barang VALUES("PQ0212","Chirlac Rapid 4/0 75 cm DS-19","SCH","100011","55689","96850","0","0");
INSERT INTO t_barang VALUES("PQ0224","Chirlac Rapid 3/0 75 cm viol DS-25","SCH","100011","55689","96850","0","0");
INSERT INTO t_barang VALUES("PQ8216","Chirlac Rapid 2/0 45 cm natu HRT-15","SCH","100011","54510","94800","0","0");
INSERT INTO t_barang VALUES("PR0597","Chirlac rapid 2/0 90cm HRT","SCH","100011","53360","92800","0","0");
INSERT INTO t_barang VALUES("PS001","Pembasmi Serangga","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("SB1003","Safety Box 2.5 L","PCS","300021","8850","17700","0","10");
INSERT INTO t_barang VALUES("SB1005","Safety Box 5 L","PCS","300021","11050","22100","0","10");
INSERT INTO t_barang VALUES("SB1008","Safety Box 8 L","PCS","300021","12950","25900","0","10");
INSERT INTO t_barang VALUES("SB1012","SAFETYBOX 12,5","PCS","300021","16000","35150","0","0");
INSERT INTO t_barang VALUES("SBB01","Sabun Baby Cair","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("SD001","Sabun Dewasa Cair","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("SM2251","Silon 7/0 45 cm blue DS-10","SCH","100016","111314","193590","0","0");
INSERT INTO t_barang VALUES("SM2255","Silon 6/0 45 cm blue DS-12","SCH","100016","55056","95750","0","0");
INSERT INTO t_barang VALUES("SM2261","Silon 5/0 45 cm blue DS-15","SCH","100016","44045","76600","0","0");
INSERT INTO t_barang VALUES("SM2267","Silon 4/0 75 cm blue DS-19","SCH","100016","44850","78000","0","0");
INSERT INTO t_barang VALUES("SM2268","Silon 3/0 75 cm blue DS-25","SCH","100016","39000","78000","0","0");
INSERT INTO t_barang VALUES("SM2284","Silon 2/0 75 cm blue DS-30","SCH","100016","45425","79000","0","0");
INSERT INTO t_barang VALUES("SM3276","Silon 3/0 75 cm blue DS-24","SCH","100016","44850","78000","0","0");
INSERT INTO t_barang VALUES("ST001","Sarung Tangan Plastik Steril","PAX","","7500","0","0","0");
INSERT INTO t_barang VALUES("STC01","Sabun Tangan Cair","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("STSV","Sarung Tangan Service Kuning","PAX","","0","0","0","0");
INSERT INTO t_barang VALUES("TF3001","Tissu Facial 700 SHEET","PAX","300028","10400","20800","0","10");
INSERT INTO t_barang VALUES("TF3002","Tissu Rol 200 SHEET","PAX","300028","4250","8500","0","10");
INSERT INTO t_barang VALUES("TG4001","TISU GULUNG","ROLL","","1500","2700","0","0");
INSERT INTO t_barang VALUES("TG4438","Tervalon 5 75 cm green HRT- 50","SCH","100017","138933","241623","0","0");
INSERT INTO t_barang VALUES("TG4511","Tervalon 3/0 75 cm green HS-25","SCH","100017","54395","94600","0","0");
INSERT INTO t_barang VALUES("TG4618","Tervalon 6 75 cm green HS-18","SCH","100017","138933","241623","0","0");
INSERT INTO t_barang VALUES("TG4758","Tervalon 2 75 cm green HRT-37","SCH","100017","64653","112440","0","0");
INSERT INTO t_barang VALUES("TG5426","Tervalon 2 4x75 cm green HRT-45","SCH","100017","147200","256000","0","0");
INSERT INTO t_barang VALUES("TG5438","Tervalon 5 4x75 cm green HRT-50","SCH","100017","147200","256000","0","0");
INSERT INTO t_barang VALUES("TG5768","Tervalon 1 75 cm green JRT-30","SCH","100017","69805","121400","0","0");
INSERT INTO t_barang VALUES("TH1001","Hand Towel Smart (Livi)","PCS","300027","4900","9800","0","10");
INSERT INTO t_barang VALUES("TH1002","Hand Towel Premium (Livi)","PAX","300027","6550","13100","0","10");
INSERT INTO t_barang VALUES("TK001","Tisu Kotak Kecil","PCS","300028","0","0","0","0");
INSERT INTO t_barang VALUES("TSI8L","Tempat Sampah Injak 8 Liter","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("UPE4060","Plastik Kresek Ungu","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("UPE6585","Plastik Sampah Ungu 65x85","PCS","300025","0","0","0","0");
INSERT INTO t_barang VALUES("UPE658520","PE 65X85X0.4","PCS","300025","1338","2675","0","10");
INSERT INTO t_barang VALUES("WP035","Wrapping uk.35","ROLL","300032","0","0","0","0");



DROP TABLE t_cash;

CREATE TABLE `t_cash` (
  `no_bukti` varchar(20) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_transaksi` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `diterima_dari` text NOT NULL,
  `no_ref` varchar(20) NOT NULL,
  `total` double NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_batal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text NOT NULL,
  PRIMARY KEY (`no_bukti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_cash VALUES("KM_MH.101218.000001","2018-12-10 08:47:26","2018-12-10 00:00:00","Transfer BRI Koran","SI_MH.191118.000058","8000000","","0000-00-00 00:00:00","");



DROP TABLE t_city;

CREATE TABLE `t_city` (
  `id_city` varchar(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_city VALUES("BTG","BATANG");
INSERT INTO t_city VALUES("BYL","BOYOLALI");
INSERT INTO t_city VALUES("KLT","KLATEN");
INSERT INTO t_city VALUES("KRA","KARANGANYAR");
INSERT INTO t_city VALUES("MAKASSAR","PT.Tivan Berkat Mulia");
INSERT INTO t_city VALUES("MG","MAGELANG");
INSERT INTO t_city VALUES("SLO","SOLO");
INSERT INTO t_city VALUES("SMG","SEMARANG");
INSERT INTO t_city VALUES("SRG","SRAGEN");
INSERT INTO t_city VALUES("SULSEL","SULAWESI SELATAN");
INSERT INTO t_city VALUES("WNG","WONOGIRI");
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
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_customer VALUES("CUST_MH.011018.000015","BELVA MEDIKA","JL. KOL SUTARTO NO.90, JEBRES, KOTA SURAKARTA 5712","","","","","","2018-10-01 19:20:38");
INSERT INTO t_customer VALUES("CUST_MH.011018.000016","PMI SUKOHARJO","JL. RAJAWALI JOHO KEC. SUKOHARJO KAB. SUKOHARJO","","","","","","2018-10-01 19:24:03");
INSERT INTO t_customer VALUES("CUST_MH.011018.000017","RS BRAYAT MINULYA","JL. DR. SETIYABUDI NO. 106 MANAHAN BANJARSARI SURA","SLO","","","","","2018-10-01 20:05:47");
INSERT INTO t_customer VALUES("CUST_MH.011018.000018","RS MITRA KELUARGA","JL. RAYA PEDAN JUWIRING KADUNGAN PEDAN SOBAYAN","","","","","","2018-10-01 20:31:14");
INSERT INTO t_customer VALUES("CUST_MH.011018.000019","RS PANTI WALUYO","JL. JENDRAL AHMAD YANI PABELAN KARTASURA SUKOHARJO","SLO","","","","","2018-10-01 21:08:44");
INSERT INTO t_customer VALUES("CUST_MH.011018.000020","RS MARGA HUSADA","JL. LET JENDRAL S. PARMAN","","","","","","2018-10-01 21:12:11");
INSERT INTO t_customer VALUES("CUST_MH.011018.000021","RSUD KOTA SURAKARTA","JL. LETTU SUMARMO NO. 1 KADIPIRO BANJARSARI SURAKA","SLO","","","","00.850.331.0.526.000","2018-10-01 21:22:46");
INSERT INTO t_customer VALUES("CUST_MH.011018.000022","RSUD DR. SOERATNO GEMOLONG","JL. DR. SOETOMO NO.792, GEMOLONG, DUSUN 1, GEMOLON","SRG","","","","","2018-10-01 21:34:20");
INSERT INTO t_customer VALUES("CUST_MH.011018.000023","TOKO RIZAL MEDIKA","SOLO","SLO","","","","","2018-10-01 21:46:21");
INSERT INTO t_customer VALUES("CUST_MH.011018.000024","PT. MH MEDIKA","VILLA SERPONG BLOK A 2/02 RT. 000 RW. 000 TANGERAN","","","","","","2018-10-01 21:49:11");
INSERT INTO t_customer VALUES("CUST_MH.011018.000025","RSIA AISYIYAH KLATEN","JL. KH HASYIM ASARI SROGO MOJAYAN KLATEN TENGAH","KLT","","","","","2018-10-01 21:52:06");
INSERT INTO t_customer VALUES("CUST_MH.021018.000026","AJM","SURAKARTA","SLO","","","","","2018-10-02 09:37:14");
INSERT INTO t_customer VALUES("CUST_MH.021018.000027","PT. TIVAN BERKAT MULIA","JL. MONGINSIDI BARU BLOK. AB7/1 BALLA PARANG, RAPP","SULSEL","","","","","2018-10-02 13:28:50");
INSERT INTO t_customer VALUES("CUST_MH.111018.000029","RSUD dr.Soediran Mangun S","Jl.Jen A Yani NO.40,Joho Lor Giriwono","WNG","","","","00.019.002.5.532.000","2018-10-11 11:47:10");
INSERT INTO t_customer VALUES("CUST_MH.111018.000030","RSUD KABUPATEN KARANGANYAR","Jl.Laksada Yos Sudarso,Kel,Bejen,Kec.Karanganyar","KRA","","","","00.004.516.1.528.000","2018-10-11 12:10:02");
INSERT INTO t_customer VALUES("CUST_MH.121218.000041","Pukesmas Pegandaan","Jl. Kendeng barat 3 no.2 Sampangan Gajahmungkur Se","SMG","","","","","2018-12-12 09:22:54");
INSERT INTO t_customer VALUES("CUST_MH.141118.000035","PT. Bina Bisnis Medika","Klipang Pesono Asri 3 Blok C No. 71 Semarang","SMG","","","","","2018-11-14 11:11:51");
INSERT INTO t_customer VALUES("CUST_MH.171018.000031","Soto Seger Sragen","Sragen","SRG","","","","","2018-10-17 09:05:01");
INSERT INTO t_customer VALUES("CUST_MH.171018.000032","RS Mardi Lestari","Jl. Rokan No.2, Magero, Sragen Tengah, Kec.Sragen ","SRG","","","","","2018-10-17 09:11:28");
INSERT INTO t_customer VALUES("CUST_MH.171118.000036","Pukesmas Karang Malang","Jl. Dewi Sartika No. 16 Kroyo Plumbungan Karangmal","KRA","","","","","2018-11-17 08:50:21");
INSERT INTO t_customer VALUES("CUST_MH.171118.000037","Pukesmas Kalijambe","Jl. Solo Kebayaan I Banaran Kalijambe","","","","","","2018-11-17 08:51:01");
INSERT INTO t_customer VALUES("CUST_MH.191018.000033","INDO Medika Sragen","Sragen","","","","","","2018-10-19 09:55:12");
INSERT INTO t_customer VALUES("CUST_MH.231018.000034","RSUD Kab. Sukoharjo","jl. Dr. Muwardi No.71 Sukoharjo","","","","","","2018-10-23 09:54:00");
INSERT INTO t_customer VALUES("CUST_MH.271118.000038","RSJD dr. Arif Zainudin","Jl. Ki Hajar Dewantoro No. 80 Jebres Surakarta","SLO","","","","00.219.799.4.526.000","2018-11-27 10:34:58");
INSERT INTO t_customer VALUES("CUST_MH.271118.000039","Melati","Jl. Jayawijaya Mojosongo Surakarta","","","","","","2018-11-27 10:36:54");
INSERT INTO t_customer VALUES("CUST_MH.271118.000040","Bendahara RSUD Waras Wiris","Jl. Raya Karanggede Gemolong KM. 13 Blok 000 No 00","BYL","","","","","2018-11-27 10:48:42");
INSERT INTO t_customer VALUES("CUST_MH.271218.000042","PT. BINERKAH ABADI MEDIKA","SURAKARTA","SLO","","","","","2018-12-27 10:40:45");
INSERT INTO t_customer VALUES("CUST_MH.300918.000001","RS KASIH IBU","JL. SLAMET RIYADI 404 PURWOSARI KEC. LAWEYAN SURAK","","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000002","RS SARILA HUSADA","JL. VETERAN NO.41-43 KROYO KEC.SRAGEN","SRG","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000003","PT. SURYA INDONESIA PERSADA","JL. CANDI PRAMBANAN UTARA III NO.3 KALIPANCUR SEMA","SMG","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000004","RS MULIA HATI","RM SAID, KALIANCAR, SELOGIRI, PANCURAN KALIANCAR, ","","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000005","RS AMAL SEHAT","JL. VETERAN NO. 35 SRAGEN KOTA KROYO","SRG","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000006","CS GATRA","SOLO","SLO","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000007","RSI AMAL SEHAT","JL. VETERAAN NO.35, SRAGEN KOTA, KROYO, KARANGMALA","SRG","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000008","RS HERMINA","JL. KOL SUTARTO NO.16 JEBRES SURAKARTA","SLO","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000009","PUKESMAS AMPEL","JL. CANDI NO.4, KUDOREJAN, URUTSEWU, AMPEL, KAB. B","","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000010","YAYASAN PANTI KOSALA","JL. BRIGJEN KATAMSO NO. 55 SURAKARTA","SLO","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000011","RS ORTOPEDI Dr. SOEHARSO","JL. A YANI, MENDUNGAN, PABELAN, KARTASURA, KAB. SU","SLO","","","","00.258.608.9.532.000","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000012","RS PKU MUH SUKOHARJO","JL. MAYOR SUNARYO  NO. 37 KEC. SUKOHARJO","","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000013","RS INDRIATI","JL. PALEM RAYA LANGENHARJO GROGOL BANJARSARI SURAK","SLO","","","","","2018-10-01 19:17:38");
INSERT INTO t_customer VALUES("CUST_MH.300918.000014","UPTD PUKESMAS TANGEN","JL. RAYA TANGEN, GALEH, GURAK WARAK, DUKUH TANGEN","","","","","","2018-10-01 19:17:38");



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

INSERT INTO t_delivery_order VALUES("DO_MH.011018.000015","2018-10-01 15:42:53","SO_MH.011018.000016","CUST_MH.011018.000015","","220000","0","220000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000016","2018-10-01 15:57:39","SO_MH.011018.000017","CUST_MH.300918.000014","","847500","0","847500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000017","2018-10-01 19:55:41","SO_MH.011018.000018","CUST_MH.011018.000016","","492000","0","492000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000018","2018-10-01 20:10:07","SO_MH.011018.000019","CUST_MH.011018.000017","","1175000","0","1175000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000019","2018-10-01 20:13:04","SO_MH.011018.000020","CUST_MH.300918.000008","","450000","0","450000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000020","2018-10-01 20:23:38","SO_MH.011018.000021","CUST_MH.300918.000008","","1715000","0","1715000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000021","2018-10-01 20:27:19","SO_MH.011018.000022","CUST_MH.011018.000017","","955800","0","955800","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000022","2018-10-01 21:02:50","SO_MH.011018.000023","CUST_MH.011018.000018","","2725000","0","2725000","2018-10-01 21:02:56","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000023","2018-10-01 21:04:23","SO_MH.011018.000024","CUST_MH.011018.000018","","4600000","0","4600000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000024","2018-10-01 21:07:43","SO_MH.011018.000025","CUST_MH.300918.000002","","1656000","0","1656000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000025","2018-10-01 21:11:28","SO_MH.011018.000026","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000026","2018-10-01 21:14:08","SO_MH.011018.000027","CUST_MH.011018.000020","","270000","0","270000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000027","2018-10-01 21:21:51","SO_MH.011018.000028","CUST_MH.300918.000010","","542600","0","542600","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000028","2018-10-01 21:24:35","SO_MH.011018.000029","CUST_MH.011018.000021","","2160000","0","2160000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000029","2018-10-01 21:29:47","SO_MH.011018.000030","CUST_MH.300918.000011","","5225000","0","5225000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000030","2018-10-01 21:43:56","SO_MH.011018.000031","CUST_MH.011018.000022","","7852500","0","7852500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000031","2018-10-01 21:45:50","SO_MH.011018.000032","CUST_MH.300918.000001","","1920000","0","1920000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000032","2018-10-01 21:48:03","SO_MH.011018.000033","CUST_MH.011018.000023","","800000","0","800000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000033","2018-10-01 21:51:13","SO_MH.011018.000034","CUST_MH.011018.000024","","1501500","0","1501500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011018.000034","2018-10-01 21:55:40","SO_MH.011018.000035","CUST_MH.011018.000025","","1320000","0","1320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011118.000066","2018-11-01 10:46:12","SO_MH.011118.000075","CUST_MH.300918.000004","","248000","0","248000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011118.000067","2018-11-01 10:48:29","SO_MH.011118.000076","CUST_MH.300918.000012","","435000","0","435000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.011218.000097","2018-12-01 09:58:24","SO_MH.011218.000107","CUST_MH.300918.000008","","3954000","0","3954000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000035","2018-10-02 09:39:49","SO_MH.021018.000036","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000036","2018-10-02 09:45:49","SO_MH.021018.000037","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000037","2018-10-02 09:51:15","SO_MH.021018.000038","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000038","2018-10-02 13:32:09","SO_MH.021018.000039","CUST_MH.021018.000027","","13120000","0","13120000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021118.000068","2018-11-02 08:19:03","SO_MH.021118.000077","CUST_MH.111018.000030","","1675920","0","1675920","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.031018.000039","2018-10-03 09:39:26","SO_MH.031018.000040","CUST_MH.021018.000027","","13120000","0","13120000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.041218.000098","2018-12-04 08:53:55","SO_MH.041218.000108","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.041218.000099","2018-12-04 10:35:21","SO_MH.041218.000109","CUST_MH.271118.000039","","1080000","0","1080000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.041218.000100","2018-12-04 10:42:22","SO_MH.041218.000110","CUST_MH.271118.000039","","108000","0","108000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.041218.000101","2018-12-04 10:51:57","SO_MH.041218.000111","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.051118.000069","2018-11-05 11:05:51","SO_MH.051118.000078","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.051218.000102","2018-12-05 15:56:49","SO_MH.051218.000112","CUST_MH.271118.000039","","216000","0","216000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.051218.000103","2018-12-05 16:22:36","SO_MH.051218.000113","CUST_MH.271118.000040","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061118.000070","2018-11-06 09:08:47","SO_MH.061118.000079","CUST_MH.300918.000008","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061118.000071","2018-11-06 09:21:57","SO_MH.061118.000080","CUST_MH.171018.000032","","360000","0","360000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061218.000104","2018-12-06 08:49:59","SO_MH.061218.000114","CUST_MH.271118.000040","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061218.000105","2018-12-06 08:58:24","SO_MH.061218.000115","CUST_MH.300918.000010","","1290000","0","1290000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061218.000106","2018-12-06 09:02:42","SO_MH.061218.000116","CUST_MH.300918.000008","","450000","0","450000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061218.000107","2018-12-06 13:38:00","SO_MH.061218.000117","CUST_MH.011018.000015","","1200000","0","1200000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.061218.000108","2018-12-06 15:34:31","SO_MH.061218.000118","CUST_MH.141118.000035","","1200000","0","1200000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.071218.000109","2018-12-07 08:45:13","SO_MH.071218.000119","CUST_MH.300918.000012","","795000","0","795000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.071218.000110","2018-12-07 11:49:20","SO_MH.071218.000120","CUST_MH.271118.000040","","920000","0","920000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.071218.000111","2018-12-07 16:05:45","SO_MH.071218.000121","CUST_MH.111018.000030","","16720000","0","16720000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.101018.000040","2018-10-10 08:37:00","SO_MH.081018.000041","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.101018.000041","2018-10-10 11:11:53","SO_MH.101018.000042","CUST_MH.300918.000008","","390000","0","390000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.111218.000112","2018-12-11 08:59:52","SO_MH.111218.000122","CUST_MH.111018.000029","","770000","0","770000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.121118.000072","2018-11-12 09:16:09","SO_MH.121118.000081","CUST_MH.300918.000010","","3490000","0","3490000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.121118.000073","2018-11-12 10:51:46","SO_MH.121118.000082","CUST_MH.011018.000017","","400000","0","400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.121218.000113","2018-12-12 08:53:12","SO_MH.121218.000123","CUST_MH.011018.000017","","2374032","593508","1780524","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.121218.000114","2018-12-12 09:45:32","SO_MH.121218.000124","CUST_MH.121218.000041","","408710","0","408710","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.121218.000115","2018-12-12 14:55:52","SO_MH.121218.000126","CUST_MH.271118.000038","","586400","0","586400","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.131118.000074","2018-11-13 08:52:08","SO_MH.131118.000083","CUST_MH.011018.000019","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.131118.000075","2018-11-13 08:55:03","SO_MH.131118.000084","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.131218.000116","2018-12-13 10:09:04","SO_MH.131218.000127","CUST_MH.111018.000030","","1122000","0","1122000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.131218.000117","2018-12-13 10:12:52","SO_MH.131218.000128","CUST_MH.300918.000010","","800000","0","800000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.141118.000076","2018-11-14 10:21:09","SO_MH.141118.000085","CUST_MH.300918.000010","","2200000","0","2200000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.141118.000077","2018-11-14 11:32:26","SO_MH.141118.000086","CUST_MH.141118.000035","","1625000","0","1625000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.151118.000078","2018-11-15 09:40:40","SO_MH.151118.000087","CUST_MH.011018.000021","","4909200","0","4909200","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.151118.000079","2018-11-15 10:37:59","SO_MH.151118.000088","CUST_MH.300918.000010","","1309500","0","1309500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.151218.000118","2018-12-15 09:38:25","SO_MH.151218.000129","CUST_MH.300918.000010","","903000","0","903000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000042","2018-10-17 09:06:18","SO_MH.171018.000054","CUST_MH.171018.000031","","680000","0","680000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000043","2018-10-17 09:15:56","SO_MH.171018.000055","CUST_MH.171018.000032","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000044","2018-10-17 09:29:46","SO_MH.171018.000056","CUST_MH.171018.000032","","506250","0","506250","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000045","2018-10-17 11:03:22","SO_MH.171018.000057","CUST_MH.011018.000015","","300000","0","300000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000046","2018-10-17 12:01:19","SO_MH.171018.000058","CUST_MH.300918.000010","","1724500","0","1724500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171018.000047","2018-10-17 16:19:08","SO_MH.171018.000059","CUST_MH.171018.000032","","10817000","0","10817000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171118.000080","2018-11-17 08:33:08","SO_MH.171118.000089","CUST_MH.300918.000008","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171118.000081","2018-11-17 08:40:24","SO_MH.171118.000090","CUST_MH.300918.000008","","4470000","0","4470000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171118.000082","2018-11-17 08:58:33","SO_MH.171118.000091","CUST_MH.171118.000037","","2488224","0","2488224","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171118.000083","2018-11-17 09:00:32","SO_MH.171118.000092","CUST_MH.171118.000036","","735000","0","735000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171218.000119","2018-12-17 09:52:10","SO_MH.171218.000130","CUST_MH.111018.000030","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.171218.000120","2018-12-17 09:54:47","SO_MH.171218.000131","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191018.000048","2018-10-19 09:24:55","SO_MH.191018.000060","CUST_MH.300918.000008","","379600","0","379600","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191018.000049","2018-10-19 09:56:29","SO_MH.191018.000061","CUST_MH.191018.000033","","300000","0","300000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191118.000084","2018-11-19 09:03:03","SO_MH.191118.000093","CUST_MH.111018.000030","","8360000","0","8360000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191218.000121","2018-12-19 09:08:27","SO_MH.191218.000132","CUST_MH.011018.000017","","2736117","0","2736117","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191218.000122","2018-12-19 09:08:28","SO_MH.191218.000132","CUST_MH.011018.000017","","2736117","0","2736117","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191218.000123","2018-12-19 09:15:15","SO_MH.191218.000133","CUST_MH.300918.000008","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191218.000124","2018-12-19 09:20:39","SO_MH.191218.000134","CUST_MH.011018.000019","","1379000","0","1379000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.191218.000125","2018-12-19 15:02:50","SO_MH.191218.000135","CUST_MH.011018.000019","","1288000","0","1288000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.201018.000050","2018-10-20 09:30:37","SO_MH.201018.000062","CUST_MH.111018.000030","","8360000","0","8360000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.201018.000051","2018-10-20 09:31:25","SO_MH.111018.000051","CUST_MH.111018.000030","","8360000","0","8360000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.201218.000126","2018-12-20 09:23:33","SO_MH.201218.000136","CUST_MH.111018.000029","","2200000","0","2200000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.211118.000085","2018-11-21 09:57:18","SO_MH.211118.000094","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.211218.000127","2018-12-21 08:56:57","SO_MH.211218.000138","CUST_MH.300918.000010","","485000","0","485000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.221018.000052","2018-10-22 10:20:40","SO_MH.111018.000044","CUST_MH.300918.000008","","438000","0","438000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.221018.000053","2018-10-22 10:21:19","SO_MH.221018.000063","CUST_MH.300918.000008","","432000","0","432000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231018.000054","2018-10-23 09:12:59","SO_MH.231018.000066","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231018.000055","2018-10-23 09:18:15","SO_MH.111018.000043","CUST_MH.011018.000019","","1400000","0","1400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231018.000056","2018-10-23 09:25:25","SO_MH.111018.000048","CUST_MH.111018.000029","","1540000","0","1540000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231018.000057","2018-10-23 09:28:16","SO_MH.111018.000049","CUST_MH.021018.000027","","13120000","0","13120000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231018.000058","2018-10-23 09:55:11","SO_MH.231018.000067","CUST_MH.231018.000034","","9600000","0","9600000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231118.000086","2018-11-23 09:01:16","SO_MH.231118.000095","CUST_MH.011018.000020","","240000","0","240000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231118.000087","2018-11-23 09:03:25","SO_MH.231118.000096","CUST_MH.011018.000020","","370000","0","370000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.231118.000088","2018-11-23 09:22:04","SO_MH.231118.000097","CUST_MH.011018.000022","","6082500","0","6082500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.261018.000059","2018-10-26 09:44:52","SO_MH.261018.000068","CUST_MH.011018.000021","","1963680","0","1963680","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.261118.000089","2018-11-26 09:36:22","SO_MH.261118.000098","CUST_MH.300918.000014","","547500","0","547500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.261218.000128","2018-12-26 08:58:25","SO_MH.261218.000139","CUST_MH.300918.000008","","300000","0","300000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.261218.000129","2018-12-26 10:01:21","SO_MH.261218.000140","CUST_MH.300918.000010","","480000","0","480000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271118.000090","2018-11-27 10:36:08","SO_MH.271118.000100","CUST_MH.271118.000038","","4505000","0","4505000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271118.000091","2018-11-27 10:39:01","SO_MH.271118.000101","CUST_MH.271118.000039","","370000","0","370000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271118.000092","2018-11-27 11:08:33","SO_MH.271118.000102","CUST_MH.271118.000040","","2741000","0","2741000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271118.000093","2018-11-27 13:33:13","SO_MH.271118.000103","CUST_MH.021018.000027","","67005750","0","67005750","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271118.000094","2018-11-27 14:08:19","SO_MH.271118.000104","CUST_MH.021018.000027","","67268250","0","67268250","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271218.000130","2018-12-27 10:28:50","SO_MH.271218.000141","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271218.000131","2018-12-27 10:44:34","SO_MH.271218.000142","CUST_MH.271218.000042","","2870000","0","2870000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.271218.000132","2018-12-27 10:47:40","SO_MH.271218.000143","CUST_MH.011018.000021","","981840","0","981840","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.281118.000095","2018-11-28 09:18:27","SO_MH.281118.000105","CUST_MH.171018.000032","","1440000","0","1440000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.281118.000096","2018-11-28 09:23:44","SO_MH.281118.000106","CUST_MH.271118.000039","","1080000","0","1080000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.281218.000133","2018-12-28 09:46:03","SO_MH.281218.000144","CUST_MH.271118.000038","","10796250","0","10796250","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.281218.000134","2018-12-28 15:17:33","SO_MH.281218.000145","CUST_MH.011018.000025","","1349280","337320","1011960","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000001","2018-09-30 09:51:59","SO_MH.300918.000001","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000002","2018-09-30 10:05:14","SO_MH.300918.000002","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000003","2018-09-30 10:09:06","SO_MH.300918.000003","CUST_MH.300918.000002","","1632000","0","1632000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000004","2018-09-30 10:21:44","SO_MH.300918.000004","CUST_MH.300918.000003","","1040000","0","1040000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000005","2018-09-30 10:31:04","SO_MH.300918.000005","CUST_MH.300918.000004","","822000","0","822000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000006","2018-09-30 10:36:00","SO_MH.300918.000006","CUST_MH.300918.000005","","67500","0","67500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000007","2018-09-30 12:31:18","SO_MH.300918.000007","CUST_MH.300918.000006","","540000","0","540000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000008","2018-09-30 12:41:10","SO_MH.300918.000008","CUST_MH.300918.000007","","475000","0","475000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000009","2018-09-30 12:45:29","SO_MH.300918.000009","CUST_MH.300918.000008","","450000","0","450000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000010","2018-09-30 12:59:36","SO_MH.300918.000010","CUST_MH.300918.000009","","550000","0","550000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000011","2018-09-30 13:14:41","SO_MH.300918.000012","CUST_MH.300918.000010","","379500","0","379500","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000012","2018-09-30 13:18:27","SO_MH.300918.000013","CUST_MH.300918.000011","","400000","0","400000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000013","2018-09-30 13:23:36","SO_MH.300918.000014","CUST_MH.300918.000012","","435000","0","435000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.300918.000014","2018-09-30 13:30:24","SO_MH.300918.000015","CUST_MH.300918.000013","","3450000","0","3450000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.301018.000060","2018-10-30 09:09:19","SO_MH.301018.000069","CUST_MH.300918.000001","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.301018.000061","2018-10-30 10:14:11","SO_MH.301018.000070","CUST_MH.011018.000017","","310000","0","310000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.301018.000062","2018-10-30 13:04:27","SO_MH.301018.000071","CUST_MH.300918.000010","","1470000","0","1470000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.311018.000063","2018-10-31 08:49:27","SO_MH.311018.000072","CUST_MH.011018.000019","","528000","0","528000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.311018.000064","2018-10-31 09:32:43","SO_MH.311018.000073","CUST_MH.300918.000014","","225000","0","225000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.311018.000065","2018-10-31 09:54:26","SO_MH.311018.000074","CUST_MH.300918.000009","","874000","0","874000","0000-00-00 00:00:00","");



DROP TABLE t_delivery_order_detail;

CREATE TABLE `t_delivery_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_delivery_order` varchar(255) DEFAULT NULL,
  `fk_barang` varchar(255) DEFAULT NULL,
  `gross_jual_barang` double DEFAULT NULL,
  `diskon_jual_barang` double DEFAULT NULL,
  `diskon_persen` varchar(10) DEFAULT NULL,
  `netto_jual_barang` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

INSERT INTO t_delivery_order_detail VALUES("1","DO_MH.300918.000001","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("2","DO_MH.300918.000002","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("3","DO_MH.300918.000003","TH1001","6800","0","","1632000","240");
INSERT INTO t_delivery_order_detail VALUES("4","DO_MH.300918.000004","187955","52000","0","","1040000","20");
INSERT INTO t_delivery_order_detail VALUES("5","DO_MH.300918.000005","TG4001","1500","0","","150000","100");
INSERT INTO t_delivery_order_detail VALUES("6","DO_MH.300918.000005","TH1001","7000","0","","672000","96");
INSERT INTO t_delivery_order_detail VALUES("7","DO_MH.300918.000006","KPE6070","675","0","","67500","100");
INSERT INTO t_delivery_order_detail VALUES("8","DO_MH.300918.000007","KPE8010","1800","0","","540000","300");
INSERT INTO t_delivery_order_detail VALUES("9","DO_MH.300918.000008","KPE6010","950","0","","475000","500");
INSERT INTO t_delivery_order_detail VALUES("10","DO_MH.300918.000009","KPE6010","30000","0","","450000","15");
INSERT INTO t_delivery_order_detail VALUES("11","DO_MH.300918.000010","PKP01001","5500","0","","550000","100");
INSERT INTO t_delivery_order_detail VALUES("12","DO_MH.300918.000011","PLM03710","37950","0","","379500","10");
INSERT INTO t_delivery_order_detail VALUES("13","DO_MH.300918.000012","KPE8010","2000","0","","400000","200");
INSERT INTO t_delivery_order_detail VALUES("14","DO_MH.300918.000013","KPE6010","1300","0","","195000","150");
INSERT INTO t_delivery_order_detail VALUES("15","DO_MH.300918.000013","KPE8010","1600","0","","240000","150");
INSERT INTO t_delivery_order_detail VALUES("16","DO_MH.300918.000014","PLHD6010046","1150","0","","3450000","3000");
INSERT INTO t_delivery_order_detail VALUES("17","DO_MH.011018.000015","SB1012","22000","0","","220000","10");
INSERT INTO t_delivery_order_detail VALUES("18","DO_MH.011018.000016","KPE4060","750","0","","45000","60");
INSERT INTO t_delivery_order_detail VALUES("19","DO_MH.011018.000016","KPE8010","2200","0","","330000","150");
INSERT INTO t_delivery_order_detail VALUES("20","DO_MH.011018.000016","HPE901210","2500","0","","375000","150");
INSERT INTO t_delivery_order_detail VALUES("21","DO_MH.011018.000016","HPE4060","650","0","","97500","150");
INSERT INTO t_delivery_order_detail VALUES("22","DO_MH.011018.000017","STC01","23000","0","","230000","10");
INSERT INTO t_delivery_order_detail VALUES("23","DO_MH.011018.000017","TH1001","8000","0","","192000","24");
INSERT INTO t_delivery_order_detail VALUES("24","DO_MH.011018.000017","TK001","3500","0","","70000","20");
INSERT INTO t_delivery_order_detail VALUES("25","DO_MH.011018.000018","CH01","235000","0","","1175000","5");
INSERT INTO t_delivery_order_detail VALUES("26","DO_MH.011018.000019","KPE6010","30000","0","","450000","15");
INSERT INTO t_delivery_order_detail VALUES("27","DO_MH.011018.000020","PL03710","85000","0","","425000","5");
INSERT INTO t_delivery_order_detail VALUES("28","DO_MH.011018.000020","PL03813","120000","0","","600000","5");
INSERT INTO t_delivery_order_detail VALUES("29","DO_MH.011018.000020","PL1015","138000","0","","690000","5");
INSERT INTO t_delivery_order_detail VALUES("30","DO_MH.011018.000021","PL03710","23760","0","","237600","10");
INSERT INTO t_delivery_order_detail VALUES("31","DO_MH.011018.000021","PL03813","47880","0","","718200","15");
INSERT INTO t_delivery_order_detail VALUES("32","DO_MH.011018.000022","HPE8010","1292","0","","1292000","1000");
INSERT INTO t_delivery_order_detail VALUES("33","DO_MH.011018.000022","KPE8010","1433","0","","1433000","1000");
INSERT INTO t_delivery_order_detail VALUES("34","DO_MH.011018.000023","HPE8010","2200","0","","2200000","1000");
INSERT INTO t_delivery_order_detail VALUES("35","DO_MH.011018.000023","KPE8010","2400","0","","2400000","1000");
INSERT INTO t_delivery_order_detail VALUES("36","DO_MH.011018.000024","TH1001","6900","0","","1656000","240");
INSERT INTO t_delivery_order_detail VALUES("37","DO_MH.011018.000025","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("38","DO_MH.011018.000026","SB1008","18000","0","","270000","15");
INSERT INTO t_delivery_order_detail VALUES("39","DO_MH.011018.000027","PL03610","28800","0","","57600","2");
INSERT INTO t_delivery_order_detail VALUES("40","DO_MH.011018.000027","PL03710","24250","0","","485000","20");
INSERT INTO t_delivery_order_detail VALUES("41","DO_MH.011018.000028","TH1001","9000","0","","2160000","240");
INSERT INTO t_delivery_order_detail VALUES("42","DO_MH.011018.000029","PLHD80100","2090","0","","5225000","2500");
INSERT INTO t_delivery_order_detail VALUES("43","DO_MH.011018.000030","HPE4060","545","0","","2043750","3750");
INSERT INTO t_delivery_order_detail VALUES("44","DO_MH.011018.000030","KPE4060","600","0","","2400000","4000");
INSERT INTO t_delivery_order_detail VALUES("45","DO_MH.011018.000030","HPE6010023","1818","0","","3408750","1875");
INSERT INTO t_delivery_order_detail VALUES("46","DO_MH.011018.000031","TH1001","8000","0","","1920000","240");
INSERT INTO t_delivery_order_detail VALUES("47","DO_MH.011018.000032","SB1008","16000","0","","800000","50");
INSERT INTO t_delivery_order_detail VALUES("48","DO_MH.011018.000033","SB1003","10500","0","","1501500","143");
INSERT INTO t_delivery_order_detail VALUES("49","DO_MH.011018.000034","101090","440000","0","","1320000","3");
INSERT INTO t_delivery_order_detail VALUES("50","DO_MH.021018.000035","SB1008","16000","0","","320000","20");
INSERT INTO t_delivery_order_detail VALUES("51","DO_MH.021018.000036","SB1008","16000","0","","320000","20");
INSERT INTO t_delivery_order_detail VALUES("52","DO_MH.021018.000037","SB1008","16000","0","","320000","20");
INSERT INTO t_delivery_order_detail VALUES("53","DO_MH.021018.000038","SB1005","13120","0","","13120000","1000");
INSERT INTO t_delivery_order_detail VALUES("54","DO_MH.031018.000039","SB1005","13120","0","","13120000","1000");
INSERT INTO t_delivery_order_detail VALUES("55","DO_MH.101018.000040","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("56","DO_MH.101018.000041","KPE6010","30000","0","","390000","13");
INSERT INTO t_delivery_order_detail VALUES("57","DO_MH.171018.000042","TG4001","1700","0","","680000","400");
INSERT INTO t_delivery_order_detail VALUES("58","DO_MH.171018.000043","GC01","220000","0","","440000","2");
INSERT INTO t_delivery_order_detail VALUES("59","DO_MH.171018.000044","KPE4060","1350","0","","506250","375");
INSERT INTO t_delivery_order_detail VALUES("60","DO_MH.171018.000045","UPE4060","15000","0","","300000","20");
INSERT INTO t_delivery_order_detail VALUES("61","DO_MH.171018.000046","PL03813","43000","0","","860000","20");
INSERT INTO t_delivery_order_detail VALUES("62","DO_MH.171018.000046","PLM03710","37950","0","","379500","10");
INSERT INTO t_delivery_order_detail VALUES("63","DO_MH.171018.000046","PL03710","24250","0","","485000","20");
INSERT INTO t_delivery_order_detail VALUES("64","DO_MH.171018.000047","TH1001","7500","0","","37500","5");
INSERT INTO t_delivery_order_detail VALUES("65","DO_MH.171018.000047","WP035","17000","0","","850000","50");
INSERT INTO t_delivery_order_detail VALUES("66","DO_MH.171018.000047","KHD015","5500","0","","275000","50");
INSERT INTO t_delivery_order_detail VALUES("67","DO_MH.171018.000047","KT021","11500","0","","345000","30");
INSERT INTO t_delivery_order_detail VALUES("68","DO_MH.171018.000047","STSV","18000","0","","432000","24");
INSERT INTO t_delivery_order_detail VALUES("69","DO_MH.171018.000047","HHD8010","1500","0","","7500000","5000");
INSERT INTO t_delivery_order_detail VALUES("70","DO_MH.171018.000047","TSI8L","80000","0","","240000","3");
INSERT INTO t_delivery_order_detail VALUES("71","DO_MH.171018.000047","KHD4060","700","0","","1137500","1625");
INSERT INTO t_delivery_order_detail VALUES("72","DO_MH.191018.000048","KPE6010","29200","0","","379600","13");
INSERT INTO t_delivery_order_detail VALUES("73","DO_MH.191018.000049","KPE8010","3000","0","","300000","100");
INSERT INTO t_delivery_order_detail VALUES("74","DO_MH.201018.000050","TH1001","8360","0","","8360000","1000");
INSERT INTO t_delivery_order_detail VALUES("75","DO_MH.201018.000051","TH1001","8360","0","","8360000","1000");
INSERT INTO t_delivery_order_detail VALUES("76","DO_MH.221018.000052","KPE6010","30000","0","","90000","3");
INSERT INTO t_delivery_order_detail VALUES("77","DO_MH.221018.000052","KPE6010","29000","0","","348000","12");
INSERT INTO t_delivery_order_detail VALUES("78","DO_MH.221018.000053","HHD60100","28000","0","","140000","5");
INSERT INTO t_delivery_order_detail VALUES("79","DO_MH.221018.000053","KPE6010","29200","0","","292000","10");
INSERT INTO t_delivery_order_detail VALUES("80","DO_MH.231018.000054","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("81","DO_MH.231018.000055","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("82","DO_MH.231018.000056","KPE4060","15400","0","","1540000","100");
INSERT INTO t_delivery_order_detail VALUES("83","DO_MH.231018.000057","SB1005","13120","0","","13120000","1000");
INSERT INTO t_delivery_order_detail VALUES("84","DO_MH.231018.000058","TH1001","9600","0","","9600000","1000");
INSERT INTO t_delivery_order_detail VALUES("85","DO_MH.261018.000059","TH1001","8182","0","","1963680","240");
INSERT INTO t_delivery_order_detail VALUES("86","DO_MH.301018.000060","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("87","DO_MH.301018.000061","PB1420","31000","0","","310000","10");
INSERT INTO t_delivery_order_detail VALUES("88","DO_MH.301018.000062","PL1015","53500","0","","1070000","20");
INSERT INTO t_delivery_order_detail VALUES("89","DO_MH.301018.000062","KWM03710","40000","0","","400000","10");
INSERT INTO t_delivery_order_detail VALUES("90","DO_MH.311018.000063","TG4001","16500","0","","528000","32");
INSERT INTO t_delivery_order_detail VALUES("91","DO_MH.311018.000064","HPE6080","1500","0","","225000","150");
INSERT INTO t_delivery_order_detail VALUES("92","DO_MH.311018.000065","KPE608028","1740","0","","174000","100");
INSERT INTO t_delivery_order_detail VALUES("93","DO_MH.311018.000065","PL03813","70000","0","","700000","10");
INSERT INTO t_delivery_order_detail VALUES("94","DO_MH.011118.000066","TH1001","7000","0","","98000","14");
INSERT INTO t_delivery_order_detail VALUES("95","DO_MH.011118.000066","TG4001","1500","0","","150000","100");
INSERT INTO t_delivery_order_detail VALUES("96","DO_MH.011118.000067","KPE608028","1600","0","","240000","150");
INSERT INTO t_delivery_order_detail VALUES("97","DO_MH.011118.000067","KPE608028","1300","0","","195000","150");
INSERT INTO t_delivery_order_detail VALUES("98","DO_MH.021118.000068","PS001","38630","0","","927120","24");
INSERT INTO t_delivery_order_detail VALUES("99","DO_MH.021118.000068","SD001","10400","0","","748800","72");
INSERT INTO t_delivery_order_detail VALUES("100","DO_MH.051118.000069","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("101","DO_MH.061118.000070","KPE608028","30000","0","","300000","10");
INSERT INTO t_delivery_order_detail VALUES("102","DO_MH.061118.000070","HPE609025","28000","0","","140000","5");
INSERT INTO t_delivery_order_detail VALUES("103","DO_MH.061118.000071","SB1008","18000","0","","360000","20");
INSERT INTO t_delivery_order_detail VALUES("104","DO_MH.121118.000072","PL1117","110000","0","","2200000","20");
INSERT INTO t_delivery_order_detail VALUES("105","DO_MH.121118.000072","PL1120","129000","0","","1290000","10");
INSERT INTO t_delivery_order_detail VALUES("106","DO_MH.121118.000073","KPE8010017","1600","0","","400000","250");
INSERT INTO t_delivery_order_detail VALUES("107","DO_MH.131118.000074","TG4001","16000","0","","1280000","80");
INSERT INTO t_delivery_order_detail VALUES("108","DO_MH.131118.000075","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("109","DO_MH.141118.000076","PL1117","110000","0","","2200000","20");
INSERT INTO t_delivery_order_detail VALUES("110","DO_MH.141118.000077","NC1005","13500","0","","675000","50");
INSERT INTO t_delivery_order_detail VALUES("111","DO_MH.141118.000077","NC1012","19000","0","","950000","50");
INSERT INTO t_delivery_order_detail VALUES("112","DO_MH.151118.000078","TH1001","8182","0","","4909200","600");
INSERT INTO t_delivery_order_detail VALUES("113","DO_MH.151118.000079","PL1015","53500","0","","909500","17");
INSERT INTO t_delivery_order_detail VALUES("114","DO_MH.151118.000079","KWM03710","40000","0","","400000","10");
INSERT INTO t_delivery_order_detail VALUES("115","DO_MH.171118.000080","HPE609025","28000","0","","140000","5");
INSERT INTO t_delivery_order_detail VALUES("116","DO_MH.171118.000080","KPE608028","30000","0","","300000","10");
INSERT INTO t_delivery_order_detail VALUES("117","DO_MH.171118.000081","PL1015","138000","0","","2070000","15");
INSERT INTO t_delivery_order_detail VALUES("118","DO_MH.171118.000081","PL03813","120000","0","","2400000","20");
INSERT INTO t_delivery_order_detail VALUES("119","DO_MH.171118.000082","PL03710","35600","0","","534000","15");
INSERT INTO t_delivery_order_detail VALUES("120","DO_MH.171118.000082","PL03813","47600","0","","714000","15");
INSERT INTO t_delivery_order_detail VALUES("121","DO_MH.171118.000082","MHD4060","33364","0","","100092","3");
INSERT INTO t_delivery_order_detail VALUES("122","DO_MH.171118.000082","KPE4060","33364","0","","100092","3");
INSERT INTO t_delivery_order_detail VALUES("123","DO_MH.171118.000082","HHDJUMBO","22000","0","","110000","5");
INSERT INTO t_delivery_order_detail VALUES("124","DO_MH.171118.000082","HHDJUMBO","22000","0","","110000","5");
INSERT INTO t_delivery_order_detail VALUES("125","DO_MH.171118.000082","HPE4060","31694","0","","316940","10");
INSERT INTO t_delivery_order_detail VALUES("126","DO_MH.171118.000082","HPE609025","1500","0","","150000","100");
INSERT INTO t_delivery_order_detail VALUES("127","DO_MH.171118.000082","KPE608028","1500","0","","150000","100");
INSERT INTO t_delivery_order_detail VALUES("128","DO_MH.171118.000082","HPE6080","1354","0","","203100","150");
INSERT INTO t_delivery_order_detail VALUES("129","DO_MH.171118.000083","HPE4060","735","0","","367500","500");
INSERT INTO t_delivery_order_detail VALUES("130","DO_MH.171118.000083","KPE4060","735","0","","367500","500");
INSERT INTO t_delivery_order_detail VALUES("131","DO_MH.191118.000084","TH1001","8360","0","","8360000","1000");
INSERT INTO t_delivery_order_detail VALUES("132","DO_MH.211118.000085","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("133","DO_MH.231118.000086","SB1008","12000","0","","240000","20");
INSERT INTO t_delivery_order_detail VALUES("134","DO_MH.231118.000087","SB1008","18500","0","","370000","20");
INSERT INTO t_delivery_order_detail VALUES("135","DO_MH.231118.000088","HPE4060","600","0","","2160000","3600");
INSERT INTO t_delivery_order_detail VALUES("136","DO_MH.231118.000088","KPE4060","650","0","","2047500","3150");
INSERT INTO t_delivery_order_detail VALUES("137","DO_MH.231118.000088","HPE609025","1400","0","","1050000","750");
INSERT INTO t_delivery_order_detail VALUES("138","DO_MH.231118.000088","KPE608028","1650","0","","825000","500");
INSERT INTO t_delivery_order_detail VALUES("139","DO_MH.261118.000089","HPE901210","2500","0","","375000","150");
INSERT INTO t_delivery_order_detail VALUES("140","DO_MH.261118.000089","HPE4060","650","0","","97500","150");
INSERT INTO t_delivery_order_detail VALUES("141","DO_MH.261118.000089","KPE4060","750","0","","75000","100");
INSERT INTO t_delivery_order_detail VALUES("142","DO_MH.271118.000090","PPK15","8500","0","","4505000","530");
INSERT INTO t_delivery_order_detail VALUES("143","DO_MH.271118.000091","SB1008","18500","0","","370000","20");
INSERT INTO t_delivery_order_detail VALUES("144","DO_MH.271118.000092","PL1015","101000","0","","1010000","10");
INSERT INTO t_delivery_order_detail VALUES("145","DO_MH.271118.000092","PL03710","51000","0","","510000","10");
INSERT INTO t_delivery_order_detail VALUES("146","DO_MH.271118.000092","PL03813","78900","0","","789000","10");
INSERT INTO t_delivery_order_detail VALUES("147","DO_MH.271118.000092","KPE4060","720","0","","432000","600");
INSERT INTO t_delivery_order_detail VALUES("148","DO_MH.271118.000093","SB1005","12763","0","","67005750","5250");
INSERT INTO t_delivery_order_detail VALUES("149","DO_MH.271118.000094","NC1005","12813","0","","67268250","5250");
INSERT INTO t_delivery_order_detail VALUES("150","DO_MH.281118.000095","SB1008","18000","0","","1440000","80");
INSERT INTO t_delivery_order_detail VALUES("151","DO_MH.281118.000096","CPE6585","1500","0","","1080000","720");
INSERT INTO t_delivery_order_detail VALUES("152","DO_MH.011218.000097","PL1015","110000","0","","1650000","15");
INSERT INTO t_delivery_order_detail VALUES("153","DO_MH.011218.000097","PL03813","96000","0","","2304000","24");
INSERT INTO t_delivery_order_detail VALUES("154","DO_MH.041218.000098","TH1001","7000","0","","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("155","DO_MH.041218.000099","CPE6585","720","0","","1080000","1500");
INSERT INTO t_delivery_order_detail VALUES("156","DO_MH.041218.000100","CPE6585","720","0","","108000","150");
INSERT INTO t_delivery_order_detail VALUES("157","DO_MH.041218.000101","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("158","DO_MH.051218.000102","CPE6585","720","0","","216000","300");
INSERT INTO t_delivery_order_detail VALUES("159","DO_MH.051218.000103","PK85","25000","0","","50000","2");
INSERT INTO t_delivery_order_detail VALUES("160","DO_MH.051218.000103","PPB1KG","5000","0","","50000","10");
INSERT INTO t_delivery_order_detail VALUES("161","DO_MH.051218.000103","PPK21","7000","0","","140000","20");
INSERT INTO t_delivery_order_detail VALUES("162","DO_MH.051218.000103","PPK35","8000","0","","80000","10");
INSERT INTO t_delivery_order_detail VALUES("163","DO_MH.061218.000104","PK85","25000","0","","50000","2");
INSERT INTO t_delivery_order_detail VALUES("164","DO_MH.061218.000104","PPB1KG","5000","0","","50000","10");
INSERT INTO t_delivery_order_detail VALUES("165","DO_MH.061218.000104","PPK21","7000","0","","140000","20");
INSERT INTO t_delivery_order_detail VALUES("166","DO_MH.061218.000104","PPK35","8000","0","","80000","10");
INSERT INTO t_delivery_order_detail VALUES("167","DO_MH.061218.000105","PL1120","129000","0","","1290000","10");
INSERT INTO t_delivery_order_detail VALUES("168","DO_MH.061218.000106","KPE608028","30000","0","","450000","15");
INSERT INTO t_delivery_order_detail VALUES("169","DO_MH.061218.000107","HHD21","10000","0","","500000","50");
INSERT INTO t_delivery_order_detail VALUES("170","DO_MH.061218.000107","HHD28","14000","0","","700000","50");
INSERT INTO t_delivery_order_detail VALUES("171","DO_MH.061218.000108","SB1012","24000","0","","1200000","50");
INSERT INTO t_delivery_order_detail VALUES("172","DO_MH.071218.000109","KPE608028","1300","0","","195000","150");
INSERT INTO t_delivery_order_detail VALUES("173","DO_MH.071218.000109","KPE8010","1600","0","","240000","150");
INSERT INTO t_delivery_order_detail VALUES("174","DO_MH.071218.000109","SB1008","18000","0","","360000","20");
INSERT INTO t_delivery_order_detail VALUES("175","DO_MH.071218.000110","PK85","25000","0","","50000","2");
INSERT INTO t_delivery_order_detail VALUES("176","DO_MH.071218.000110","PPB1KG","40000","0","","400000","10");
INSERT INTO t_delivery_order_detail VALUES("177","DO_MH.071218.000110","PPK21","14000","0","","280000","20");
INSERT INTO t_delivery_order_detail VALUES("178","DO_MH.071218.000110","PPK35","19000","0","","190000","10");
INSERT INTO t_delivery_order_detail VALUES("179","DO_MH.071218.000111","TH1001","8360","0","","16720000","2000");
INSERT INTO t_delivery_order_detail VALUES("180","DO_MH.111218.000112","KPE4060","15400","0","","770000","50");
INSERT INTO t_delivery_order_detail VALUES("181","DO_MH.121218.000113","LV0386","98918","24729.5","","1780524","24");
INSERT INTO t_delivery_order_detail VALUES("182","DO_MH.121218.000114","4200000000-aks-00059","11182","0","","223640","20");
INSERT INTO t_delivery_order_detail VALUES("183","DO_MH.121218.000114","4200000000-aks","18507","0","","185070","10");
INSERT INTO t_delivery_order_detail VALUES("184","DO_MH.121218.000115","PL03710","37440","0","","187200","5");
INSERT INTO t_delivery_order_detail VALUES("185","DO_MH.121218.000115","PL1015","79840","0","","399200","5");
INSERT INTO t_delivery_order_detail VALUES("186","DO_MH.131218.000116","SD001","10400","0","","520000","50");
INSERT INTO t_delivery_order_detail VALUES("187","DO_MH.131218.000116","SBB01","12040","0","","602000","50");
INSERT INTO t_delivery_order_detail VALUES("188","DO_MH.131218.000117","KWM03710","40000","0","","800000","20");
INSERT INTO t_delivery_order_detail VALUES("189","DO_MH.151218.000118","PL03813","43000","0","","903000","21");
INSERT INTO t_delivery_order_detail VALUES("190","DO_MH.171218.000119","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("191","DO_MH.171218.000120","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("192","DO_MH.191218.000121","PL03710","46854","0","","843372","18");
INSERT INTO t_delivery_order_detail VALUES("193","DO_MH.191218.000121","PL03813","72307","0","","1446140","20");
INSERT INTO t_delivery_order_detail VALUES("194","DO_MH.191218.000121","PL1015","89321","0","","446605","5");
INSERT INTO t_delivery_order_detail VALUES("195","DO_MH.191218.000122","PL03710","46854","0","","843372","18");
INSERT INTO t_delivery_order_detail VALUES("196","DO_MH.191218.000122","PL03813","72307","0","","1446140","20");
INSERT INTO t_delivery_order_detail VALUES("197","DO_MH.191218.000122","PL1015","89321","0","","446605","5");
INSERT INTO t_delivery_order_detail VALUES("198","DO_MH.191218.000123","KPE608028","30000","0","","300000","10");
INSERT INTO t_delivery_order_detail VALUES("199","DO_MH.191218.000123","HPE609025","28000","0","","140000","5");
INSERT INTO t_delivery_order_detail VALUES("200","DO_MH.191218.000124","TH1001","7000","0","","1379000","197");
INSERT INTO t_delivery_order_detail VALUES("201","DO_MH.191218.000125","TH1001","7000","0","","1288000","184");
INSERT INTO t_delivery_order_detail VALUES("202","DO_MH.201218.000126","KPE8010","2200","0","","2200000","1000");
INSERT INTO t_delivery_order_detail VALUES("203","DO_MH.211218.000127","PL03710","24250","0","","485000","20");
INSERT INTO t_delivery_order_detail VALUES("204","DO_MH.261218.000128","KPE608028","30000","0","","300000","10");
INSERT INTO t_delivery_order_detail VALUES("205","DO_MH.261218.000129","KWM03710","40000","0","","480000","12");
INSERT INTO t_delivery_order_detail VALUES("206","DO_MH.271218.000130","TH1001","8000","0","","960000","120");
INSERT INTO t_delivery_order_detail VALUES("207","DO_MH.271218.000131","SB1008","16000","0","","800000","50");
INSERT INTO t_delivery_order_detail VALUES("208","DO_MH.271218.000131","KPE608028","1380","0","","2070000","1500");
INSERT INTO t_delivery_order_detail VALUES("209","DO_MH.271218.000132","TH1001","8182","0","","981840","120");
INSERT INTO t_delivery_order_detail VALUES("210","DO_MH.281218.000133","TH1001","8637","0","","10796250","1250");
INSERT INTO t_delivery_order_detail VALUES("211","DO_MH.281218.000134","MN0223","112440","28110","","1011960","12");



DROP TABLE t_divisi;

CREATE TABLE `t_divisi` (
  `id_divisi` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_divisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_divisi VALUES("01","VITREX");
INSERT INTO t_divisi VALUES("02","CONVATEC");
INSERT INTO t_divisi VALUES("03","PKRT RS");



DROP TABLE t_group;

CREATE TABLE `t_group` (
  `id_group` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_minor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_group VALUES("100011","CHIRLAC RAPID","01SA");
INSERT INTO t_group VALUES("100012","CHIRASORB","01SA");
INSERT INTO t_group VALUES("100013","MONOLAC","01SA");
INSERT INTO t_group VALUES("100014","CHIRALEN","02SN");
INSERT INTO t_group VALUES("100015","POLYDOX MONO VIOL LOOP","01SA");
INSERT INTO t_group VALUES("100016","SILON","02SN");
INSERT INTO t_group VALUES("100017","TERVALON","02SN");
INSERT INTO t_group VALUES("100018","SILK","03NS");
INSERT INTO t_group VALUES("100019","CHIRALEN MESH LIGHT","02SN");
INSERT INTO t_group VALUES("100020","CAPRO MESH","04SM");
INSERT INTO t_group VALUES("100021","POLYDOX MONO VIOL","01SA");
INSERT INTO t_group VALUES("100022","CHIRALEN MESH","02SN");
INSERT INTO t_group VALUES("200011","AQUACEL EXTRA","10HF");
INSERT INTO t_group VALUES("200012","AQUACEL AG EXTRA","10HF");
INSERT INTO t_group VALUES("200013","AQUACEL FOAM ADHESIVE","10HF");
INSERT INTO t_group VALUES("200014","AQUACEL FOAM NON ADHESIVE","10HF");
INSERT INTO t_group VALUES("200015","AQUACEL AG SURGICAL","10HF");
INSERT INTO t_group VALUES("200016","AQUACEL AG BURN","10HF");
INSERT INTO t_group VALUES("200017","AQUACEL","10HF");
INSERT INTO t_group VALUES("200018","AQUACEL AG","10HF");
INSERT INTO t_group VALUES("200019","KALTOSTAT","12ALG");
INSERT INTO t_group VALUES("200020","DUODERM HYDROACTIVE GEL","11HC");
INSERT INTO t_group VALUES("200021","DUODERM CGF DRESSING","11HC");
INSERT INTO t_group VALUES("200022","DUODERM EXTRA THIN DRESSING","11HC");
INSERT INTO t_group VALUES("200023","STOMADRESS PLUS","130P");
INSERT INTO t_group VALUES("200024","ACTIVE LIFE 1-PC","130P");
INSERT INTO t_group VALUES("200026","ACTIVE LIFE 1-PC-PEDIATRIC","130P");
INSERT INTO t_group VALUES("200027","SUR-FIT NATURA WAFER","14TP");
INSERT INTO t_group VALUES("200028","SUR-FIT NATURA POUCH","14TP");
INSERT INTO t_group VALUES("200029","ACCESSORIES","15OTH");
INSERT INTO t_group VALUES("30001","TISU GULUNG","23TU");
INSERT INTO t_group VALUES("300021","SAFETY BOX COATED","21SB");
INSERT INTO t_group VALUES("300022","SAFETY BOX NON-COATED","21SB");
INSERT INTO t_group VALUES("300023","TRASHBAG HITAM","22TB");
INSERT INTO t_group VALUES("300024","TRASHBAG KUNING","22TB");
INSERT INTO t_group VALUES("300025","TRASHBAG UNGU","22TB");
INSERT INTO t_group VALUES("300026","TRASHBAG COKLAT","22TB");
INSERT INTO t_group VALUES("300027","TISSUE HANDTOWEL","23TU");
INSERT INTO t_group VALUES("300028","TISSUE FACIAL","23TU");
INSERT INTO t_group VALUES("300029","PLASTIK KLIP WARNA","24KL");
INSERT INTO t_group VALUES("300030","PLASTIK KLIP BENING","24KL");
INSERT INTO t_group VALUES("300031","MANGKUK KERAMIK","25MK");
INSERT INTO t_group VALUES("300032","WRAPING","26WG");
INSERT INTO t_group VALUES("300033","PLASTIK JUMBO HITAM","HHDJUMBO");
INSERT INTO t_group VALUES("300034","PLASTIK KRESEK PUTIH","00296");
INSERT INTO t_group VALUES("300035","SABUN TANGAN CAIR","SBN");
INSERT INTO t_group VALUES("300036","GLUCO DR","GC01");



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

INSERT INTO t_kwitansi VALUES("SI_MH.300918.000001","2018-09-30 09:52:16","DO_MH.300918.000001","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000002","2018-09-30 10:05:40","DO_MH.300918.000002","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000003","2018-09-30 10:09:20","DO_MH.300918.000003","1632000","0","1632000","0","1632000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000004","2018-09-30 10:21:56","DO_MH.300918.000004","1040000","0","1040000","0","1040000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000005","2018-09-30 10:31:24","DO_MH.300918.000005","822000","0","822000","0","822000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000006","2018-09-30 10:36:10","DO_MH.300918.000006","67500","0","67500","0","67500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000007","2018-09-30 12:31:31","DO_MH.300918.000007","540000","0","540000","0","540000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000008","2018-09-30 12:41:21","DO_MH.300918.000008","475000","0","475000","0","475000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000009","2018-09-30 12:45:43","DO_MH.300918.000009","450000","0","450000","0","450000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000010","2018-09-30 12:59:53","DO_MH.300918.000010","550000","0","550000","55000","605000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000011","2018-09-30 13:14:52","DO_MH.300918.000011","379500","0","379500","0","379500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000012","2018-09-30 13:18:38","DO_MH.300918.000012","400000","0","400000","40000","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000013","2018-09-30 13:23:49","DO_MH.300918.000013","435000","0","435000","0","435000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.300918.000014","2018-09-30 13:30:37","DO_MH.300918.000014","3450000","0","3450000","0","3450000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011018.000015","2018-10-01 15:43:06","DO_MH.011018.000015","220000","0","220000","0","220000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011018.000016","2018-10-01 15:57:50","DO_MH.011018.000016","847500","0","847500","0","847500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011018.000017","2018-10-01 19:55:53","DO_MH.011018.000017","492000","0","492000","0","492000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011018.000018","2018-10-01 20:10:19","DO_MH.011018.000018","1175000","0","1175000","0","1175000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011018.000019","2018-10-01 20:13:15","DO_MH.011018.000019","450000","0","450000","0","450000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000020","2018-10-02 08:32:30","DO_MH.011018.000020","1715000","0","1715000","0","1715000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000021","2018-10-02 08:32:45","DO_MH.011018.000021","955800","0","955800","0","955800","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000022","2018-10-02 08:33:01","DO_MH.011018.000023","4600000","0","4600000","0","4600000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000023","2018-10-02 08:33:22","DO_MH.011018.000024","1656000","0","1656000","0","1656000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000024","2018-10-02 08:33:44","DO_MH.011018.000025","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000025","2018-10-02 08:33:58","DO_MH.011018.000026","270000","0","270000","0","270000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000026","2018-10-02 08:34:14","DO_MH.011018.000027","542600","0","542600","0","542600","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000027","2018-10-02 08:34:31","DO_MH.011018.000028","2160000","0","2160000","216000","2376000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000028","2018-10-02 08:34:54","DO_MH.011018.000029","5225000","0","5225000","522500","5747500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000029","2018-10-02 08:35:39","DO_MH.011018.000030","7852500","0","7852500","785250","8637750","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000030","2018-10-02 08:35:55","DO_MH.011018.000031","1920000","0","1920000","0","1920000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000031","2018-10-02 08:36:55","DO_MH.011018.000032","800000","0","800000","0","800000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000032","2018-10-02 08:37:23","DO_MH.011018.000033","1501500","0","1501500","0","1501500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000033","2018-10-02 08:37:37","DO_MH.011018.000034","1320000","0","1320000","0","1320000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000034","2018-10-02 09:44:23","DO_MH.021018.000035","320000","0","320000","0","320000","Quantity di faktur tidak sama dengan input di SO","2018-10-02 09:44:23");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000035","2018-10-02 09:49:18","DO_MH.021018.000036","320000","0","320000","0","320000","","2018-10-02 09:49:18");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000036","2018-10-02 09:49:27","DO_MH.021018.000035","320000","0","320000","0","320000","","2018-10-02 09:49:27");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000037","2018-10-02 09:51:32","DO_MH.021018.000037","320000","0","320000","0","320000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021018.000038","2018-10-03 09:36:16","DO_MH.021018.000038","13120000","0","13120000","1312000","14432000","","2018-10-03 09:36:16");
INSERT INTO t_kwitansi VALUES("SI_MH.031018.000039","2018-10-03 09:40:20","DO_MH.031018.000039","13120000","0","13120000","1312000","14432000","","2018-10-03 09:40:20");
INSERT INTO t_kwitansi VALUES("SI_MH.031018.000040","2018-10-03 09:42:36","DO_MH.021018.000038","13120000","0","13120000","1312000","14432000","","2018-10-03 09:42:36");
INSERT INTO t_kwitansi VALUES("SI_MH.101018.000041","2018-10-10 08:37:26","DO_MH.101018.000040","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.101018.000042","2018-10-19 09:28:46","DO_MH.101018.000041","390000","0","390000","0","390000","","2018-10-19 09:28:46");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000043","2018-10-17 09:06:49","DO_MH.171018.000042","680000","0","680000","0","680000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000044","2018-10-17 09:16:13","DO_MH.171018.000043","440000","0","440000","0","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000045","2018-10-17 09:29:59","DO_MH.171018.000044","506250","0","506250","0","506250","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000046","2018-10-17 11:03:37","DO_MH.171018.000045","300000","0","300000","30000","330000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000047","2018-10-17 11:03:55","DO_MH.031018.000039","13120000","0","13120000","1312000","14432000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000048","2018-10-17 12:02:20","DO_MH.171018.000046","1724500","0","1724500","0","1724500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171018.000049","2018-10-17 16:19:20","DO_MH.171018.000047","10817000","0","10817000","0","10817000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191018.000050","2018-10-19 09:25:11","DO_MH.191018.000048","379600","0","379600","0","379600","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191018.000043","2018-10-19 09:56:51","DO_MH.191018.000049","300000","0","300000","0","300000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.201018.000044","2018-10-20 09:30:54","DO_MH.201018.000050","8360000","0","8360000","836000","9196000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.201018.000045","2018-10-22 10:11:31","DO_MH.201018.000051","8360000","0","8360000","836000","9196000","","2018-10-22 10:11:31");
INSERT INTO t_kwitansi VALUES("SI_MH.221018.000046","2018-10-22 10:21:06","DO_MH.221018.000052","438000","0","438000","0","438000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.221018.000047","2018-10-23 09:29:50","DO_MH.101018.000041","390000","0","390000","0","390000","","2018-10-23 09:29:50");
INSERT INTO t_kwitansi VALUES("SI_MH.221018.000048","2018-10-22 10:23:29","DO_MH.101018.000041","390000","0","390000","0","390000","","2018-10-22 10:23:29");
INSERT INTO t_kwitansi VALUES("SI_MH.221018.000048","2018-10-22 10:23:29","DO_MH.221018.000053","432000","0","432000","0","432000","","2018-10-22 10:23:29");
INSERT INTO t_kwitansi VALUES("SI_MH.231018.000049","2018-10-23 09:13:21","DO_MH.231018.000054","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.231018.000050","2018-10-23 09:18:32","DO_MH.231018.000055","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.231018.000051","2018-10-23 09:27:34","DO_MH.231018.000056","1540000","0","1540000","0","1540000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.231018.000052","2018-10-23 09:28:47","DO_MH.231018.000057","13120000","0","13120000","1312000","14432000","","2018-10-23 09:28:47");
INSERT INTO t_kwitansi VALUES("SI_MH.231018.000048","2018-10-23 09:55:41","DO_MH.231018.000058","9600000","0","9600000","0","9600000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.261018.000049","2018-10-26 09:45:13","DO_MH.261018.000059","1963680","0","1963680","196368","2160048","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.301018.000050","2018-10-30 09:10:38","DO_MH.301018.000060","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.301018.000051","2018-10-30 10:14:30","DO_MH.301018.000061","310000","0","310000","0","310000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.301018.000052","2018-11-15 10:26:55","DO_MH.301018.000062","1470000","0","1470000","0","1470000","","2018-11-15 10:26:55");
INSERT INTO t_kwitansi VALUES("SI_MH.311018.000053","2018-10-31 08:49:46","DO_MH.311018.000063","528000","0","528000","0","528000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.311018.000054","2018-10-31 09:33:07","DO_MH.311018.000064","225000","0","225000","0","225000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.311018.000055","2018-10-31 09:55:30","DO_MH.311018.000065","874000","0","874000","87400","961400","","2018-10-31 09:55:30");
INSERT INTO t_kwitansi VALUES("SI_MH.011118.000056","2018-11-01 10:46:26","DO_MH.011118.000066","248000","0","248000","0","248000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011118.000057","2018-11-01 10:48:46","DO_MH.011118.000067","435000","0","435000","0","435000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.021118.000058","2018-11-02 08:20:01","DO_MH.021118.000068","1675920","0","1675920","167592","1843512","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.051118.000059","2018-11-05 11:06:12","DO_MH.051118.000069","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.061118.000060","2018-11-06 09:09:24","DO_MH.061118.000070","440000","0","440000","0","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.061118.000061","2018-11-06 09:22:12","DO_MH.061118.000071","360000","0","360000","0","360000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.121118.000062","2018-11-14 10:17:56","DO_MH.121118.000072","3490000","0","3490000","0","3490000","","2018-11-14 10:17:56");
INSERT INTO t_kwitansi VALUES("SI_MH.121118.000063","2018-11-12 10:52:05","DO_MH.121118.000073","400000","0","400000","0","400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.131118.000064","2018-11-13 08:52:25","DO_MH.131118.000074","1280000","0","1280000","0","1280000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.131118.000065","2018-11-13 08:55:19","DO_MH.131118.000075","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.141118.000063","2018-11-14 10:21:31","DO_MH.141118.000076","2200000","0","2200000","0","2200000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.141118.000064","2018-11-14 11:32:40","DO_MH.141118.000077","1625000","0","1625000","162500","1787500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.151118.000065","2018-11-15 09:41:21","DO_MH.151118.000078","4909200","0","4909200","490920","5400120","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.151118.000053","2018-11-15 10:38:15","DO_MH.151118.000079","1309500","0","1309500","0","1309500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171118.000054","2018-11-17 08:33:28","DO_MH.171118.000080","440000","0","440000","0","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171118.000055","2018-11-17 08:40:38","DO_MH.171118.000081","4470000","0","4470000","0","4470000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171118.000056","2018-11-17 08:58:48","DO_MH.171118.000082","2488224","0","2488224","248822.4","2737046.4","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171118.000057","2018-11-17 09:00:52","DO_MH.171118.000083","735000","0","735000","0","735000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191118.000058","2018-11-19 09:03:46","DO_MH.191118.000084","8360000","0","8360000","836000","9196000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.211118.000059","2018-11-21 09:57:39","DO_MH.211118.000085","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.231118.000060","2018-11-23 09:02:19","DO_MH.231118.000086","240000","0","240000","0","240000","harga salah","2018-11-23 09:02:19");
INSERT INTO t_kwitansi VALUES("SI_MH.231118.000061","2018-11-23 09:03:38","DO_MH.231118.000087","370000","0","370000","0","370000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.231118.000062","2018-11-23 09:22:17","DO_MH.231118.000088","6082500","0","6082500","608250","6690750","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.261118.000063","2018-11-26 09:36:41","DO_MH.261118.000089","547500","0","547500","0","547500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271118.000064","2018-11-27 10:36:26","DO_MH.271118.000090","4505000","0","4505000","450500","4955500","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271118.000065","2018-11-27 10:39:14","DO_MH.271118.000091","370000","0","370000","0","370000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271118.000066","2018-11-27 11:09:08","DO_MH.271118.000092","2741000","0","2741000","274100","3015100","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271118.000067","2018-11-27 13:48:44","DO_MH.271118.000093","67005750","0","67005750","6700575","73706325","salah harga","2018-11-27 13:48:44");
INSERT INTO t_kwitansi VALUES("SI_MH.271118.000068","2018-11-27 14:08:41","DO_MH.271118.000094","67268250","0","67268250","6726825","73995075","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.281118.000069","2018-11-28 09:18:44","DO_MH.281118.000095","1440000","0","1440000","0","1440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.281118.000070","2018-12-04 10:34:00","DO_MH.281118.000096","1080000","0","1080000","0","1080000","","2018-12-04 10:34:00");
INSERT INTO t_kwitansi VALUES("SI_MH.011218.000071","2018-12-01 09:59:00","DO_MH.011218.000097","3954000","0","3954000","0","3954000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.041218.000072","2018-12-04 08:54:12","DO_MH.041218.000098","1400000","0","1400000","0","1400000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.041218.000071","2018-12-04 10:35:39","DO_MH.041218.000099","1080000","0","1080000","0","1080000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.041218.000072","2018-12-04 10:42:35","DO_MH.041218.000100","108000","0","108000","0","108000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.041218.000073","2018-12-04 10:52:09","DO_MH.041218.000101","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.051218.000074","2018-12-05 15:57:28","DO_MH.051218.000102","216000","0","216000","0","216000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.051218.000075","2018-12-05 16:23:20","DO_MH.051218.000103","320000","0","320000","0","320000","salah input","2018-12-05 16:23:20");
INSERT INTO t_kwitansi VALUES("SI_MH.061218.000076","2018-12-07 08:30:09","DO_MH.061218.000104","320000","0","320000","32000","352000","Salah Harga","2018-12-07 08:30:09");
INSERT INTO t_kwitansi VALUES("SI_MH.061218.000077","2018-12-06 08:58:41","DO_MH.061218.000105","1290000","0","1290000","0","1290000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.061218.000078","2018-12-06 09:03:00","DO_MH.061218.000106","450000","0","450000","0","450000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.061218.000079","2018-12-06 13:38:16","DO_MH.061218.000107","1200000","0","1200000","0","1200000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.061218.000080","2018-12-06 15:34:46","DO_MH.061218.000108","1200000","0","1200000","120000","1320000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.071218.000077","2018-12-07 08:45:26","DO_MH.071218.000109","795000","0","795000","0","795000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.071218.000078","2018-12-07 11:49:41","DO_MH.071218.000110","920000","0","920000","92000","1012000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.071218.000079","2018-12-07 16:05:58","DO_MH.071218.000111","16720000","0","16720000","1672000","18392000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.111218.000080","2018-12-11 09:00:19","DO_MH.111218.000112","770000","0","770000","0","770000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.121218.000081","2018-12-12 08:53:41","DO_MH.121218.000113","2374032","593508","1780524","178052.4","1958576.4","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.121218.000082","2018-12-12 09:45:49","DO_MH.121218.000114","408710","0","408710","40871","449581","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.121218.000083","2018-12-12 14:56:05","DO_MH.121218.000115","586400","0","586400","0","586400","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.131218.000084","2018-12-13 10:09:21","DO_MH.131218.000116","1122000","0","1122000","112200","1234200","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.131218.000085","2018-12-13 10:13:07","DO_MH.131218.000117","800000","0","800000","0","800000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.151218.000086","2018-12-15 09:38:41","DO_MH.151218.000118","903000","0","903000","0","903000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.171218.000087","2018-12-17 09:52:47","DO_MH.171218.000119","960000","0","960000","0","960000","","2018-12-17 09:52:47");
INSERT INTO t_kwitansi VALUES("SI_MH.171218.000088","2018-12-17 09:55:00","DO_MH.171218.000120","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191218.000089","2018-12-19 09:08:53","DO_MH.191218.000122","2736117","0","2736117","0","2736117","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191218.000090","2018-12-19 09:15:33","DO_MH.191218.000123","440000","0","440000","0","440000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.191218.000091","2018-12-19 14:32:56","DO_MH.191218.000124","1379000","0","1379000","0","1379000","ganti quantity","2018-12-19 14:32:56");
INSERT INTO t_kwitansi VALUES("SI_MH.191218.000092","2018-12-19 15:03:12","DO_MH.191218.000125","1288000","0","1288000","0","1288000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.201218.000093","2018-12-20 09:23:45","DO_MH.201218.000126","2200000","0","2200000","220000","2420000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.211218.000094","2018-12-21 08:57:16","DO_MH.211218.000127","485000","0","485000","0","485000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.261218.000095","2018-12-26 08:58:40","DO_MH.261218.000128","300000","0","300000","0","300000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.261218.000096","2018-12-26 10:01:36","DO_MH.261218.000129","480000","0","480000","0","480000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271218.000097","2018-12-27 10:44:52","DO_MH.271218.000130","960000","0","960000","0","960000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271218.000098","2018-12-27 10:45:19","DO_MH.271218.000131","2870000","0","2870000","0","2870000","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.271218.000099","2018-12-27 10:47:57","DO_MH.271218.000132","981840","0","981840","98184","1080024","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.281218.000100","2018-12-28 09:46:19","DO_MH.281218.000133","10796250","0","10796250","1079625","11875875","","0000-00-00 00:00:00");
INSERT INTO t_kwitansi VALUES("SI_MH.281218.000101","2018-12-28 15:19:00","DO_MH.281218.000134","1349280","337320","1011960","101196","1113156","","0000-00-00 00:00:00");



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
INSERT INTO t_marketing VALUES("05","ARIS SETIYONO","19");
INSERT INTO t_marketing VALUES("06","KRISTIANA IKA","19");
INSERT INTO t_marketing VALUES("07","NIKKO ESTRADA","19");
INSERT INTO t_marketing VALUES("08","BANDEL PARTONO","19");



DROP TABLE t_mayor;

CREATE TABLE `t_mayor` (
  `id_mayor` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_divisi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mayor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_mayor VALUES("MH010","SUTURES","01");
INSERT INTO t_mayor VALUES("MH012","SURGICAL MESH","01");
INSERT INTO t_mayor VALUES("MH021","WOUND CARE","02");
INSERT INTO t_mayor VALUES("MH022","STOMA","02");
INSERT INTO t_mayor VALUES("MH031","SANITASI","03");
INSERT INTO t_mayor VALUES("MH032","LOGISTIK","03");
INSERT INTO t_mayor VALUES("MH033","GIZI","03");
INSERT INTO t_mayor VALUES("MH34","ALKES","03");



DROP TABLE t_minor;

CREATE TABLE `t_minor` (
  `id_minor` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_mayor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_minor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_minor VALUES("00296","Plastik Kresek","MH031");
INSERT INTO t_minor VALUES("01SA","SYNTETIC ABSORBABLE SUTURES","MH010");
INSERT INTO t_minor VALUES("02SN","SYNTETIC NON - ABS SUTURES","MH010");
INSERT INTO t_minor VALUES("03NS","NATURAL SUTURES","MH010");
INSERT INTO t_minor VALUES("04SM","PARTIALLY ABSORBABLE MESHES","MH012");
INSERT INTO t_minor VALUES("05SM","NON ABSORBABLE MESHES","MH012");
INSERT INTO t_minor VALUES("10HF","HYDROFIBER","MH021");
INSERT INTO t_minor VALUES("11HC","HYDROCHOLOID","MH021");
INSERT INTO t_minor VALUES("12ALG","ALGINATE","MH021");
INSERT INTO t_minor VALUES("130P","ONE PIECE","MH022");
INSERT INTO t_minor VALUES("14TP","TWO PIECE","MH022");
INSERT INTO t_minor VALUES("15OTH","OTHERS","MH022");
INSERT INTO t_minor VALUES("21SB","SAFETY BOX","MH031");
INSERT INTO t_minor VALUES("22TB","TRASHBAG","MH031");
INSERT INTO t_minor VALUES("23TU","TISSUE","MH032");
INSERT INTO t_minor VALUES("24KL","PLASTIK KLIP","MH032");
INSERT INTO t_minor VALUES("25MK","MANGKUK","MH033");
INSERT INTO t_minor VALUES("26WG","WRAPING","MH033");
INSERT INTO t_minor VALUES("27AL","ALAT MASAK","MH033");
INSERT INTO t_minor VALUES("28AI","ALAT CUCI","MH033");
INSERT INTO t_minor VALUES("29AN","ALAT MAKAN","MH033");
INSERT INTO t_minor VALUES("31ST","Sarung Tangan","MH033");
INSERT INTO t_minor VALUES("GC01","GLUCO DR","MH34");
INSERT INTO t_minor VALUES("HHDJUMBO","Plastik Kresek","MH031");
INSERT INTO t_minor VALUES("SBN","SABUN TANGAN CAIR","MH033");



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

INSERT INTO t_pembelian VALUES("PO_MH.011018.000063","2018-10-01 15:41:52","","0005","","","160000","0","160000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000064","2018-10-01 15:54:48","","0004","","","685950","0","685950","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000065","2018-10-01 16:14:06","","0004","","","352000","0","352000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000066","2018-10-01 20:09:05","","0005","","","1175000","0","1175000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000067","2018-10-01 20:11:52","","0004","","","330000","0","330000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000068","2018-10-01 20:21:48","","0002","","","550000","0","550000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000069","2018-10-01 20:25:34","","0006","","","715000","0","715000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000070","2018-10-01 20:34:34","","0004","","","1433000","0","1433000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000071","2018-10-01 20:52:02","","0006","","","1294000","0","1294000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000072","2018-10-01 21:06:10","","0001","","","1536000","0","1536000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000073","2018-10-01 21:10:21","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000074","2018-10-01 21:13:04","","0005","","","165000","0","165000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000075","2018-10-01 21:20:15","","0002","","","524000","0","524000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000076","2018-10-01 21:23:19","","0001","","","1536000","0","1536000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000077","2018-10-01 21:28:27","","0003","","","3750000","0","3750000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000078","2018-10-01 21:38:52","","0004","","","6623750","0","6623750","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000079","2018-10-01 21:41:46","","0004","","","900000","0","900000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000080","2018-10-01 21:44:36","","0001","","","1536000","0","1536000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000081","2018-10-01 21:47:08","","0005","","","550000","0","550000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000082","2018-10-01 21:49:59","","0005","","","1072500","0","1072500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011018.000083","2018-10-01 21:54:41","","0005","","","1080000","0","1080000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011118.000122","2018-11-01 10:44:35","","0004","","","908600","0","908600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.011218.000146","2018-12-01 08:54:11","","0010","","","3662338","0","3662338","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.021018.000084","2018-10-02 09:37:53","","0005","","","220000","0","220000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.021018.000085","2018-10-02 13:26:15","","0005","","","8800000","0","8800000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.021118.000123","2018-11-02 08:15:42","","0005","","","1188000","0","1188000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.031018.000086","2018-10-03 09:38:20","","0005","","","8580000","0","8580000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.041218.000147","2018-12-04 08:52:32","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.041218.000148","2018-12-04 10:50:46","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.051118.000124","2018-11-05 11:04:30","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.051218.000149","2018-12-05 16:14:37","","0003","","","61000","0","61000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.051218.000150","2018-12-06 08:42:53","","0003","","","0","0","0","2018-12-06 08:42:53","");
INSERT INTO t_pembelian VALUES("PO_MH.061218.000151","2018-12-06 08:48:08","","0003","","","272000","0","272000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.061218.000152","2018-12-06 08:56:48","","0010","","","1290000","0","1290000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.061218.000153","2018-12-06 13:36:10","","0003","","","850000","0","850000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.061218.000154","2018-12-06 15:26:20","","0005","","","950000","0","950000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.071218.000155","2018-12-07 11:44:59","","0003","","","613000","0","613000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.071218.000156","2018-12-07 16:04:45","","0001","","","12800000","0","12800000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.081018.000087","2018-10-08 09:13:16","","0001","","","7680000","0","7680000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.101018.000088","2018-10-10 11:09:13","","0004","","","286000","0","286000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000089","2018-10-11 12:06:05","","0001","","","","","0","2018-10-11 12:06:05","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000090","2018-10-11 10:04:02","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000091","2018-10-11 10:11:47","","0001","","","6400","0","6400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000092","2018-10-11 10:18:42","","0004","","","1760","0","1760","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000093","2018-10-11 10:26:00","","0006","","","34000","0","34000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000094","2018-10-11 10:32:56","","0002","","","34000","0","34000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000095","2018-10-11 11:04:53","","0004","","","680000","0","680000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000096","2018-10-11 11:40:25","","0004","","","480","0","480","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111018.000097","2018-10-11 11:57:52","","0001","","","8800","0","8800","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.111218.000157","2018-12-11 08:57:32","","0004","","","480000","0","480000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121118.000125","2018-11-12 09:14:12","","0010","","","2586500","0","2586500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121218.000158","2018-12-12 00:00:00","","0008","","","","","0","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121218.000159","2018-12-12 08:51:01","","0008","","","4437408","0","4437408","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121218.000160","2018-12-12 09:18:06","","0005","","","60000","0","60000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121218.000161","2018-12-12 09:48:57","","0005","","","80000","0","80000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.121218.000162","2018-12-12 14:54:05","","0010","","","385000","0","385000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.131118.000126","2018-11-13 00:00:00","","0001","","","","","0","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.131118.000127","2018-11-13 08:50:00","","0001","","","1808000","0","1808000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.131218.000163","2018-12-13 10:05:48","","0005","","","425000","0","425000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.131218.000164","2018-12-13 10:07:25","","0005","","","480000","0","480000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.131218.000165","2018-12-13 10:11:42","","0004","","","1033200","0","1033200","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.141118.000128","2018-11-14 10:19:46","","0010","","","1875650","0","1875650","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.141118.000129","2018-11-14 11:13:30","","0005","","","1250000","0","1250000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.151118.000130","2018-11-15 09:39:05","","0001","","","3840000","0","3840000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.151118.000131","2018-11-15 10:32:03","","0010","","","1124998","0","1124998","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.151218.000166","2018-12-15 09:36:50","","0004","","","779982","0","779982","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000090","2018-10-17 08:57:40","","0001","","","0","0","0","2018-10-17 08:57:40","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000091","2018-10-17 09:03:37","","0005","","","300000","0","300000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000092","2018-10-17 09:04:26","","0001","","","600000","0","600000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000093","2018-10-17 09:27:12","","0004","","","506250","0","506250","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000094","2018-10-17 11:00:23","","0004","","","240000","0","240000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000095","2018-10-17 11:38:07","","0002","","","1139000","0","1139000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000096","2018-10-17 11:59:39","","0002","","","220000","0","220000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000097","2018-10-17 12:41:37","","0004","","","240000","0","240000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000098","2018-10-17 15:43:24","","0004","","","32000","0","32000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000099","2018-10-17 15:58:53","","0004","","","6352000","0","6352000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000100","2018-10-17 16:04:32","","0004","","","576000","0","576000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000101","2018-10-17 16:13:13","","0004","","","180000","0","180000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171018.000102","2018-10-17 16:17:34","","0004","","","600000","0","600000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171118.000132","2018-11-17 08:38:47","","0010","","","1651500","0","1651500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171118.000133","2018-11-17 08:46:26","","0004","","","1641700","0","1641700","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171118.000134","2018-11-17 08:48:55","","0004","","","51300","0","51300","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171118.000135","2018-11-17 08:57:23","","0004","","","120000","0","120000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171218.000167","2018-12-17 09:47:34","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.171218.000168","2018-12-17 09:53:17","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000001","2018-09-19 20:52:02","migrasi1","01","","migrasi1","2227200","0","2227200","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000002","2018-09-19 20:54:32","migrasi2","01","","migrasi2","2217600","0","2217600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000003","2018-09-19 20:56:38","migrasi3","01","","migrasi3","4435200","0","4435200","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000004","2018-09-19 20:57:24","migrasi4","01","","migrasi4","4332000","0","4332000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000005","2018-09-19 20:58:12","migrasi5","01","","migrasi5","4437408","0","4437408","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000006","2018-09-19 20:59:09","migrasi6","01","","migrasi6","4629360","0","4629360","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000007","2018-09-19 21:00:01","migrasi7","01","","migrasi7","4601520","0","4601520","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000008","2018-09-19 21:00:58","migrasi8","01","","migrasi8","4562400","0","4562400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000009","2018-09-19 21:01:59","migrasi9","01","","migrasi9","2698560","0","2698560","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000010","2018-09-19 21:02:58","migrasi10","01","","migrasi10","2617920","0","2617920","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000011","2018-09-19 21:03:51","migrasi11","01","","migrasi11","2617920","0","2617920","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000012","2018-09-19 21:04:52","migrasi12","01","","migrasi12","2220000","0","2220000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000013","2018-09-19 21:05:47","migrasi13","01","","migrasi13","2676960","0","2676960","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000014","2018-09-19 21:11:43","migrasi14","01","","migrasi14","8851200","0","8851200","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000015","2018-09-19 21:12:36","migrasi15","01","","migrasi15","2790720","0","2790720","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000016","2018-09-19 21:13:23","migrasi16","01","","migrasi16","2712960","0","2712960","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000017","2018-09-19 21:14:08","migrasi17","01","","migrasi17","1872000","0","1872000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000018","2018-09-19 21:14:47","migrasi18","01","","migrasi18","1872000","0","1872000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000019","2018-09-19 21:15:34","migrasi19","01","","migrasi19","1833600","0","1833600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000020","2018-09-19 21:16:10","migrasi20","01","","migrasi20","1833600","0","1833600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000021","2018-09-19 21:17:01","migrasi21","01","","migrasi21","1045000","0","1045000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000022","2018-09-19 21:17:52","migrasi22","01","","migrasi22","4200000","0","4200000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000023","2018-09-19 21:18:23","migrasi23","01","","migrasi23","3200000","0","3200000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000024","2018-09-19 21:19:09","migrasi24","01","","migrasi24","990000","0","990000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000025","2018-09-19 21:19:58","migrasi25","01","","migrasi25","2041500","0","2041500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000026","2018-09-19 21:20:43","migrasi26","01","","migrasi26","1360800","0","1360800","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000027","2018-09-19 21:21:43","migrasi27","01","","migrasi27","571200","0","571200","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000028","2018-09-19 21:22:19","migrasi28","01","","migrasi28","156000","0","156000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000029","2018-09-19 21:23:05","migrasi29","01","","migrasi29","521500","0","521500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000030","2018-09-19 21:23:53","migrasi30","01","","migrasi30","504000","0","504000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000031","2018-09-19 21:24:49","migrasi31","01","","migrasi31","512400","0","512400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000032","2018-09-19 21:25:34","migrasi32","01","","migrasi32","686700","0","686700","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000033","2018-09-19 21:26:17","migrasi33","01","","migrasi33","663600","0","663600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000034","2018-09-19 21:27:04","migrasi34","01","","migrasi34","10508400","0","10508400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000035","2018-09-19 21:27:40","migrasi35","01","","migrasi35","3912300","0","3912300","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000036","2018-09-19 21:28:19","migrasi36","01","","migrasi36","2495700","0","2495700","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000037","2018-09-19 21:28:56","migrasi37","01","","migrasi37","552500","0","552500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000038","2018-09-19 21:29:32","migrasi38","01","","migrasi38","259000","0","259000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000039","2018-09-19 21:30:25","migrasi39","01","","migrasi39","28937000","0","28937000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000040","2018-09-19 21:31:23","migrasi40","01","","migrasi40","3011250","0","3011250","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000041","2018-09-19 21:32:20","migrasi41","01","","migrasi41","14543750","0","14543750","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000042","2018-09-19 21:33:09","migrasi42","01","","migrasi42","17731000","0","17731000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000043","2018-09-19 21:33:56","migrasi43","01","","migrasi43","20706000","0","20706000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000044","2018-09-19 21:34:55","migrasi44","01","","migrasi44","29960000","0","29960000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000045","2018-09-19 21:36:13","migrasi45","01","","migrasi45","31993000","0","31993000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000046","2018-09-19 21:36:54","migrasi46","01","","migrasi46","2352000","0","2352000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000047","2018-09-19 21:37:49","migrasi47","01","","migrasi47","314400","0","314400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.190918.000048","2018-09-19 21:38:33","migrasi48","01","","migrasi48","998400","0","998400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191018.000103","2018-10-19 09:22:08","","0004","","","286000","0","286000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191018.000104","2018-10-19 09:54:22","","0004","","","129400","0","129400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191118.000136","2018-11-19 08:59:45","","0001","","","6400000","0","6400000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191218.000169","2018-12-19 08:48:39","","0002","","","1487840","0","1487840","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191218.000170","2018-12-19 09:19:05","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.191218.000171","2018-12-19 14:45:56","","0001","","","1177600","0","1177600","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.201018.000105","2018-10-20 09:28:27","","0001","","","6400000","0","6400000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.211118.000137","2018-11-21 09:55:52","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.211218.000172","2018-12-21 08:54:24","","0004","","","779976","0","779976","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.221018.000106","2018-10-22 10:16:00","","0004","","","550000","0","550000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.221018.000107","2018-10-22 10:18:33","","0004","","","100000","0","100000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.221018.000108","2018-10-22 10:37:49","","0004","","","100000","0","100000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.231018.000109","2018-10-23 09:11:28","","0001","","","1280000","0","1280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.231018.000110","2018-10-23 09:51:47","","0001","","","6400000","0","6400000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.231118.000138","2018-11-23 09:18:00","","0004","","","2579400","0","2579400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.241018.000111","2018-10-24 00:00:00","","0009","","","","","0","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.241018.000112","2018-10-24 17:03:39","","0008","","","41319250","0","41319250","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.241018.000113","2018-10-24 17:25:22","","0004","","","30400000","0","30400000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.241018.000114","2018-10-24 17:26:51","","0004","","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.261018.000115","2018-10-26 09:26:55","","0001","","","1536000","0","1536000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.261118.000139","2018-11-26 09:33:50","","0004","","","478500","0","478500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.261118.000140","2018-11-26 09:43:04","","0005","","","47250000","0","47250000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.261218.000173","2018-12-26 09:59:21","","0001","","","326400","0","326400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271118.000141","2018-11-27 10:28:02","","0004","","","2625000","0","2625000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271118.000142","2018-11-27 10:55:51","","0010","","","1363400","0","1363400","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271118.000143","2018-11-27 13:29:46","","0005","","","47250000","0","47250000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271118.000144","2018-11-27 14:06:16","","0005","","","47250000","0","47250000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271218.000174","2018-12-27 10:27:38","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.271218.000175","2018-12-27 10:46:24","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.281118.000145","2018-11-28 09:17:08","","0005","","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.281218.000176","2018-12-28 09:43:32","","0001","","","8000000","0","8000000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000049","2018-09-30 09:50:23","","0001","","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000050","2018-09-30 10:00:20","","0001","","","960000","0","960000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000051","2018-09-30 10:07:42","","0001","","","1632000","0","1632000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000052","2018-09-30 10:19:29","","0005","","","1040000","0","1040000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000053","2018-09-30 10:29:00","","0001","","","822000","0","822000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000054","2018-09-30 10:34:57","","0004","","","67500","0","67500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000055","2018-09-30 12:29:10","","0004","","","540000","0","540000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000056","2018-09-30 12:38:49","","0004","","","475000","0","475000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000057","2018-09-30 12:44:20","","0004","","","450000","0","450000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000058","2018-09-30 12:56:48","","0004","","","550000","0","550000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000059","2018-09-30 13:13:24","","0002","","","379500","0","379500","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000060","2018-09-30 13:16:54","","0004","","","440000","0","440000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000061","2018-09-30 13:22:07","","0004","","","435000","0","435000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000062","2018-09-30 13:29:14","","0004","","","3450000","0","3450000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.300918.000063","2018-09-30 00:00:00","","0004","","","","","0","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.301018.000116","2018-10-30 09:07:00","","0001","","","768000","0","768000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.301018.000117","2018-10-30 10:12:42","","0002","","","280000","0","280000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.301018.000118","2018-10-30 12:58:32","","0003","","","1230000","0","1230000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.311018.000119","2018-10-31 08:47:20","","0001","","","384000","0","384000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.311018.000120","2018-10-31 09:31:02","","0004","","","132000","0","132000","0000-00-00 00:00:00","");
INSERT INTO t_pembelian VALUES("PO_MH.311018.000121","2018-10-31 09:51:40","","0004","","","88000","0","88000","0000-00-00 00:00:00","");



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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

INSERT INTO t_pembelian_detail VALUES("1","PO_MH.190918.000001","PR0597","92800","0","0","2227200","24");
INSERT INTO t_pembelian_detail VALUES("2","PO_MH.190918.000002","LV0256","92400","0","0","2217600","24");
INSERT INTO t_pembelian_detail VALUES("3","PO_MH.190918.000003","LV0262","92400","0","0","4435200","48");
INSERT INTO t_pembelian_detail VALUES("4","PO_MH.190918.000004","LV0263","90250","0","0","4332000","48");
INSERT INTO t_pembelian_detail VALUES("5","PO_MH.190918.000005","LV0386","92446","0","0","4437408","48");
INSERT INTO t_pembelian_detail VALUES("6","PO_MH.190918.000006","LV0390","96445","0","0","4629360","48");
INSERT INTO t_pembelian_detail VALUES("7","PO_MH.190918.000007","LV0598","95865","0","0","4601520","48");
INSERT INTO t_pembelian_detail VALUES("8","PO_MH.190918.000008","LN1211","95050","0","0","4562400","48");
INSERT INTO t_pembelian_detail VALUES("9","PO_MH.190918.000009","MN0223","112440","0","0","2698560","24");
INSERT INTO t_pembelian_detail VALUES("10","PO_MH.190918.000010","MV0381","109080","0","0","2617920","24");
INSERT INTO t_pembelian_detail VALUES("11","PO_MH.190918.000011","MV0386","109080","0","0","2617920","24");
INSERT INTO t_pembelian_detail VALUES("12","PO_MH.190918.000012","PP5027","92500","0","0","2220000","24");
INSERT INTO t_pembelian_detail VALUES("13","PO_MH.190918.000013","PP5011","111540","0","0","2676960","24");
INSERT INTO t_pembelian_detail VALUES("14","PO_MH.190918.000014","PP5015","92200","0","0","8851200","96");
INSERT INTO t_pembelian_detail VALUES("15","PO_MH.190918.000015","PP5002","116280","0","0","2790720","24");
INSERT INTO t_pembelian_detail VALUES("16","PO_MH.190918.000016","PP5007","113040","0","0","2712960","24");
INSERT INTO t_pembelian_detail VALUES("17","PO_MH.190918.000017","SM2267","78000","0","0","1872000","24");
INSERT INTO t_pembelian_detail VALUES("18","PO_MH.190918.000018","SM2268","78000","0","0","1872000","24");
INSERT INTO t_pembelian_detail VALUES("19","PO_MH.190918.000019","3108","76400","0","0","1833600","24");
INSERT INTO t_pembelian_detail VALUES("20","PO_MH.190918.000020","3336","76400","0","0","1833600","24");
INSERT INTO t_pembelian_detail VALUES("21","PO_MH.190918.000021","PC1015","1045000","0","0","1045000","1");
INSERT INTO t_pembelian_detail VALUES("22","PO_MH.190918.000022","412012","420000","0","0","4200000","10");
INSERT INTO t_pembelian_detail VALUES("23","PO_MH.190918.000023","412011","320000","0","0","3200000","10");
INSERT INTO t_pembelian_detail VALUES("24","PO_MH.190918.000024","420680","99000","0","0","990000","10");
INSERT INTO t_pembelian_detail VALUES("25","PO_MH.190918.000025","403708","204150","0","0","2041500","10");
INSERT INTO t_pembelian_detail VALUES("26","PO_MH.190918.000026","429672","136080","0","0","1360800","10");
INSERT INTO t_pembelian_detail VALUES("27","PO_MH.190918.000027","187660","114240","0","0","571200","5");
INSERT INTO t_pembelian_detail VALUES("28","PO_MH.190918.000028","187990","52000","0","0","156000","3");
INSERT INTO t_pembelian_detail VALUES("29","PO_MH.190918.000029","187987","104300","0","0","521500","5");
INSERT INTO t_pembelian_detail VALUES("30","PO_MH.190918.000030","187932","25200","0","0","504000","20");
INSERT INTO t_pembelian_detail VALUES("31","PO_MH.190918.000031","187955","51240","0","0","512400","10");
INSERT INTO t_pembelian_detail VALUES("32","PO_MH.190918.000032","187961","68670","0","0","686700","10");
INSERT INTO t_pembelian_detail VALUES("33","PO_MH.190918.000033","183910","331800","0","0","663600","2");
INSERT INTO t_pembelian_detail VALUES("34","PO_MH.190918.000034","420591","43785","0","0","10508400","240");
INSERT INTO t_pembelian_detail VALUES("35","PO_MH.190918.000035","20922","144900","0","0","3912300","27");
INSERT INTO t_pembelian_detail VALUES("36","PO_MH.190918.000036","SB1003","17700","0","0","2495700","141");
INSERT INTO t_pembelian_detail VALUES("37","PO_MH.190918.000037","SB1005","22100","0","0","552500","25");
INSERT INTO t_pembelian_detail VALUES("38","PO_MH.190918.000038","SB1008","25900","0","0","259000","10");
INSERT INTO t_pembelian_detail VALUES("39","PO_MH.190918.000039","NC1010","19000","0","0","28937000","1523");
INSERT INTO t_pembelian_detail VALUES("40","PO_MH.190918.000040","HPE901210","4015","0","0","3011250","750");
INSERT INTO t_pembelian_detail VALUES("41","PO_MH.190918.000041","HPE609025","1790","0","0","14543750","8125");
INSERT INTO t_pembelian_detail VALUES("42","PO_MH.190918.000042","KPE8010017","2980","0","0","17731000","5950");
INSERT INTO t_pembelian_detail VALUES("43","PO_MH.190918.000043","KPE608028","1740","0","0","20706000","11900");
INSERT INTO t_pembelian_detail VALUES("44","PO_MH.190918.000044","UPE658520","2675","0","0","29960000","11200");
INSERT INTO t_pembelian_detail VALUES("45","PO_MH.190918.000045","CPE658520","2675","0","0","31993000","11960");
INSERT INTO t_pembelian_detail VALUES("46","PO_MH.190918.000046","TH1001","9800","0","0","2352000","240");
INSERT INTO t_pembelian_detail VALUES("47","PO_MH.190918.000047","TH1002","13100","0","0","314400","24");
INSERT INTO t_pembelian_detail VALUES("48","PO_MH.190918.000048","TF3001","20800","0","0","998400","48");
INSERT INTO t_pembelian_detail VALUES("49","PO_MH.300918.000049","TH1001","8000","0","0","960000","120");
INSERT INTO t_pembelian_detail VALUES("50","PO_MH.300918.000050","TH1001","8000","0","0","960000","120");
INSERT INTO t_pembelian_detail VALUES("51","PO_MH.300918.000051","TH1001","6800","0","0","1632000","240");
INSERT INTO t_pembelian_detail VALUES("52","PO_MH.300918.000052","187955","52000","0","0","1040000","20");
INSERT INTO t_pembelian_detail VALUES("53","PO_MH.300918.000053","TH1001","7000","0","0","672000","96");
INSERT INTO t_pembelian_detail VALUES("54","PO_MH.300918.000053","TG4001","1500","0","0","150000","100");
INSERT INTO t_pembelian_detail VALUES("55","PO_MH.300918.000054","KPE6070","675","0","0","67500","100");
INSERT INTO t_pembelian_detail VALUES("56","PO_MH.300918.000055","KPE8010","1800","0","0","540000","300");
INSERT INTO t_pembelian_detail VALUES("57","PO_MH.300918.000056","KPE6010","950","0","0","475000","500");
INSERT INTO t_pembelian_detail VALUES("58","PO_MH.300918.000057","KPE6010","30000","0","0","450000","15");
INSERT INTO t_pembelian_detail VALUES("59","PO_MH.300918.000058","PKP01001","5500","0","0","550000","100");
INSERT INTO t_pembelian_detail VALUES("60","PO_MH.300918.000059","PLM03710","37950","0","0","379500","10");
INSERT INTO t_pembelian_detail VALUES("61","PO_MH.300918.000060","KPE8010","2200","0","0","440000","200");
INSERT INTO t_pembelian_detail VALUES("62","PO_MH.300918.000061","KPE6010","1300","0","0","195000","150");
INSERT INTO t_pembelian_detail VALUES("63","PO_MH.300918.000061","KPE8010","1600","0","0","240000","150");
INSERT INTO t_pembelian_detail VALUES("64","PO_MH.300918.000062","PLHD6010046","1150","0","0","3450000","3000");
INSERT INTO t_pembelian_detail VALUES("65","PO_MH.011018.000063","SB1012","16000","0","0","160000","10");
INSERT INTO t_pembelian_detail VALUES("66","PO_MH.011018.000064","HPE4060","326","0","0","48900","150");
INSERT INTO t_pembelian_detail VALUES("67","PO_MH.011018.000064","HPE901210","4015","0","0","602250","150");
INSERT INTO t_pembelian_detail VALUES("68","PO_MH.011018.000064","KPE4060","580","0","0","34800","60");
INSERT INTO t_pembelian_detail VALUES("69","PO_MH.011018.000065","STC01","11000","0","0","110000","10");
INSERT INTO t_pembelian_detail VALUES("70","PO_MH.011018.000065","TK001","2500","0","0","50000","20");
INSERT INTO t_pembelian_detail VALUES("71","PO_MH.011018.000065","TH1001","8000","0","0","192000","24");
INSERT INTO t_pembelian_detail VALUES("72","PO_MH.011018.000066","CH01","235000","0","0","1175000","5");
INSERT INTO t_pembelian_detail VALUES("73","PO_MH.011018.000067","KPE6010","22000","0","0","330000","15");
INSERT INTO t_pembelian_detail VALUES("74","PO_MH.011018.000068","PL1015","52000","0","0","260000","5");
INSERT INTO t_pembelian_detail VALUES("75","PO_MH.011018.000068","PL03710","24000","0","0","120000","5");
INSERT INTO t_pembelian_detail VALUES("76","PO_MH.011018.000068","PL03813","34000","0","0","170000","5");
INSERT INTO t_pembelian_detail VALUES("77","PO_MH.011018.000069","PL03710","20500","0","0","205000","10");
INSERT INTO t_pembelian_detail VALUES("78","PO_MH.011018.000069","PL03813","34000","0","0","510000","15");
INSERT INTO t_pembelian_detail VALUES("79","PO_MH.011018.000070","KPE8010","1433","0","0","1433000","1000");
INSERT INTO t_pembelian_detail VALUES("80","PO_MH.011018.000071","HPE8010","1294","0","0","1294000","1000");
INSERT INTO t_pembelian_detail VALUES("81","PO_MH.011018.000072","TH1001","6400","0","0","1536000","240");
INSERT INTO t_pembelian_detail VALUES("82","PO_MH.011018.000073","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("83","PO_MH.011018.000074","SB1008","11000","0","0","165000","15");
INSERT INTO t_pembelian_detail VALUES("84","PO_MH.011018.000075","PL03610","22000","0","0","44000","2");
INSERT INTO t_pembelian_detail VALUES("85","PO_MH.011018.000075","PL03710","24000","0","0","480000","20");
INSERT INTO t_pembelian_detail VALUES("86","PO_MH.011018.000076","TH1001","6400","0","0","1536000","240");
INSERT INTO t_pembelian_detail VALUES("87","PO_MH.011018.000077","PLHD80100","1500","0","0","3750000","2500");
INSERT INTO t_pembelian_detail VALUES("88","PO_MH.011018.000078","HPE4060","320","0","0","1280000","4000");
INSERT INTO t_pembelian_detail VALUES("89","PO_MH.011018.000078","KPE4060","450","0","0","1687500","3750");
INSERT INTO t_pembelian_detail VALUES("90","PO_MH.011018.000078","HPE6010023","1950","0","0","3656250","1875");
INSERT INTO t_pembelian_detail VALUES("91","PO_MH.011018.000079","KPE4060","450","0","0","900000","2000");
INSERT INTO t_pembelian_detail VALUES("92","PO_MH.011018.000080","TH1001","6400","0","0","1536000","240");
INSERT INTO t_pembelian_detail VALUES("93","PO_MH.011018.000081","SB1008","11000","0","0","550000","50");
INSERT INTO t_pembelian_detail VALUES("94","PO_MH.011018.000082","SB1003","7500","0","0","1072500","143");
INSERT INTO t_pembelian_detail VALUES("95","PO_MH.011018.000083","101090","360000","0","0","1080000","3");
INSERT INTO t_pembelian_detail VALUES("96","PO_MH.021018.000084","SB1008","11000","0","0","220000","20");
INSERT INTO t_pembelian_detail VALUES("97","PO_MH.021018.000085","SB1005","8800","0","0","8800000","1000");
INSERT INTO t_pembelian_detail VALUES("98","PO_MH.031018.000086","SB1005","8800","0","0","8580000","975");
INSERT INTO t_pembelian_detail VALUES("99","PO_MH.081018.000087","TH1001","6400","0","0","7680000","1200");
INSERT INTO t_pembelian_detail VALUES("100","PO_MH.101018.000088","KPE6010","22000","0","0","286000","13");
INSERT INTO t_pembelian_detail VALUES("101","PO_MH.111018.000090","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("102","PO_MH.111018.000091","TH1001","6400","0","0","6400","1");
INSERT INTO t_pembelian_detail VALUES("103","PO_MH.111018.000092","KPE6010","880","0","0","880","1");
INSERT INTO t_pembelian_detail VALUES("104","PO_MH.111018.000092","KPE6010","880","0","0","880","1");
INSERT INTO t_pembelian_detail VALUES("105","PO_MH.111018.000093","PL03813","34000","0","0","34000","1");
INSERT INTO t_pembelian_detail VALUES("106","PO_MH.111018.000094","PL03813","34000","0","0","34000","1");
INSERT INTO t_pembelian_detail VALUES("107","PO_MH.111018.000095","PL03813","34000","0","0","680000","20");
INSERT INTO t_pembelian_detail VALUES("108","PO_MH.111018.000096","KPE4060","480","0","0","480","1");
INSERT INTO t_pembelian_detail VALUES("109","PO_MH.111018.000097","NC1005","8800","0","0","8800","1");
INSERT INTO t_pembelian_detail VALUES("110","PO_MH.171018.000090","TH1001","0","0","0","0","1");
INSERT INTO t_pembelian_detail VALUES("111","PO_MH.171018.000091","GC01","150000","0","0","300000","2");
INSERT INTO t_pembelian_detail VALUES("112","PO_MH.171018.000092","TG4001","1500","0","0","600000","400");
INSERT INTO t_pembelian_detail VALUES("113","PO_MH.171018.000093","KPE4060","1350","0","0","506250","375");
INSERT INTO t_pembelian_detail VALUES("114","PO_MH.171018.000094","UPE4060","12000","0","0","240000","20");
INSERT INTO t_pembelian_detail VALUES("115","PO_MH.171018.000095","PLM03710","22000","0","0","220000","10");
INSERT INTO t_pembelian_detail VALUES("116","PO_MH.171018.000095","PL03813","34000","0","0","714000","21");
INSERT INTO t_pembelian_detail VALUES("117","PO_MH.171018.000095","PL03710","20500","0","0","205000","10");
INSERT INTO t_pembelian_detail VALUES("118","PO_MH.171018.000096","PLM03710","22000","0","0","220000","10");
INSERT INTO t_pembelian_detail VALUES("119","PO_MH.171018.000097","HPE6010023","20000","0","0","240000","12");
INSERT INTO t_pembelian_detail VALUES("120","PO_MH.171018.000098","TH1001","6400","0","0","32000","5");
INSERT INTO t_pembelian_detail VALUES("121","PO_MH.171018.000099","WP035","15000","0","0","750000","50");
INSERT INTO t_pembelian_detail VALUES("122","PO_MH.171018.000099","KHD015","3500","0","0","175000","50");
INSERT INTO t_pembelian_detail VALUES("123","PO_MH.171018.000099","HHD8010","900","0","0","4500000","5000");
INSERT INTO t_pembelian_detail VALUES("124","PO_MH.171018.000099","KHD4060","480","0","0","780000","1625");
INSERT INTO t_pembelian_detail VALUES("125","PO_MH.171018.000099","TSI8L","49000","0","0","147000","3");
INSERT INTO t_pembelian_detail VALUES("126","PO_MH.171018.000100","STSV","13000","0","0","312000","24");
INSERT INTO t_pembelian_detail VALUES("127","PO_MH.171018.000100","KT021","8800","0","0","264000","30");
INSERT INTO t_pembelian_detail VALUES("128","PO_MH.171018.000101","KT021","480","0","0","180000","375");
INSERT INTO t_pembelian_detail VALUES("129","PO_MH.171018.000102","HHDJUMBO","480","0","0","600000","1250");
INSERT INTO t_pembelian_detail VALUES("130","PO_MH.191018.000103","KPE6010","22000","0","0","286000","13");
INSERT INTO t_pembelian_detail VALUES("131","PO_MH.191018.000104","KPE8010","1294","0","0","129400","100");
INSERT INTO t_pembelian_detail VALUES("132","PO_MH.201018.000105","TH1001","6400","0","0","6400000","1000");
INSERT INTO t_pembelian_detail VALUES("133","PO_MH.221018.000106","KPE6010","22000","0","0","550000","25");
INSERT INTO t_pembelian_detail VALUES("134","PO_MH.221018.000107","HHD60100","20000","0","0","100000","5");
INSERT INTO t_pembelian_detail VALUES("135","PO_MH.221018.000108","HHD60100","5","0","0","100000","20000");
INSERT INTO t_pembelian_detail VALUES("136","PO_MH.231018.000109","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("137","PO_MH.231018.000110","TH1001","6400","0","0","6400000","1000");
INSERT INTO t_pembelian_detail VALUES("138","PO_MH.241018.000112","KPE608028","880","0","0","7436000","8450");
INSERT INTO t_pembelian_detail VALUES("139","PO_MH.241018.000112","KPE608028","880","0","0","3080000","3500");
INSERT INTO t_pembelian_detail VALUES("140","PO_MH.241018.000112","KPE8010017","1249","0","0","4683750","3750");
INSERT INTO t_pembelian_detail VALUES("141","PO_MH.241018.000112","HPE6010023","880","0","0","330000","375");
INSERT INTO t_pembelian_detail VALUES("142","PO_MH.241018.000112","HPE609025","800","0","0","6480000","8100");
INSERT INTO t_pembelian_detail VALUES("143","PO_MH.241018.000112","HPE6010023","800","0","0","300000","375");
INSERT INTO t_pembelian_detail VALUES("144","PO_MH.241018.000112","HPE4060","420","0","0","157500","375");
INSERT INTO t_pembelian_detail VALUES("145","PO_MH.241018.000112","KPE4060","480","0","0","480000","1000");
INSERT INTO t_pembelian_detail VALUES("146","PO_MH.241018.000112","SB1008","12000","0","0","18372000","1531");
INSERT INTO t_pembelian_detail VALUES("147","PO_MH.241018.000113","CPE6585","950","0","0","15200000","16000");
INSERT INTO t_pembelian_detail VALUES("148","PO_MH.241018.000113","UPE6585","950","0","0","15200000","16000");
INSERT INTO t_pembelian_detail VALUES("149","PO_MH.241018.000114","KHD6070","880","0","0","440000","500");
INSERT INTO t_pembelian_detail VALUES("150","PO_MH.261018.000115","TH1001","6400","0","0","1536000","240");
INSERT INTO t_pembelian_detail VALUES("151","PO_MH.301018.000116","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("152","PO_MH.301018.000117","PB1420","28000","0","0","280000","10");
INSERT INTO t_pembelian_detail VALUES("153","PO_MH.301018.000118","KWM03710","33000","0","0","330000","10");
INSERT INTO t_pembelian_detail VALUES("154","PO_MH.301018.000118","PL1015","45000","0","0","900000","20");
INSERT INTO t_pembelian_detail VALUES("155","PO_MH.311018.000119","TG4001","12000","0","0","384000","32");
INSERT INTO t_pembelian_detail VALUES("156","PO_MH.311018.000119","TG4001","0","0","0","0","32");
INSERT INTO t_pembelian_detail VALUES("157","PO_MH.311018.000120","HPE6080","880","0","0","132000","150");
INSERT INTO t_pembelian_detail VALUES("158","PO_MH.311018.000121","KPE608028","880","0","0","88000","100");
INSERT INTO t_pembelian_detail VALUES("159","PO_MH.311018.000121","","0","0","0","0","0");
INSERT INTO t_pembelian_detail VALUES("160","PO_MH.011118.000122","CPE658520","1338","0","0","669000","500");
INSERT INTO t_pembelian_detail VALUES("161","PO_MH.011118.000122","TG4001","1500","0","0","150000","100");
INSERT INTO t_pembelian_detail VALUES("162","PO_MH.011118.000122","TH1001","6400","0","0","89600","14");
INSERT INTO t_pembelian_detail VALUES("163","PO_MH.021118.000123","PS001","25500","0","0","612000","24");
INSERT INTO t_pembelian_detail VALUES("164","PO_MH.021118.000123","SD001","8000","0","0","576000","72");
INSERT INTO t_pembelian_detail VALUES("165","PO_MH.051118.000124","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("166","PO_MH.121118.000125","PL1117","81550","0","0","1631000","20");
INSERT INTO t_pembelian_detail VALUES("167","PO_MH.121118.000125","PL1120","95550","0","0","955500","10");
INSERT INTO t_pembelian_detail VALUES("168","PO_MH.131118.000127","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("169","PO_MH.131118.000127","TG4001","13000","0","0","1040000","80");
INSERT INTO t_pembelian_detail VALUES("170","PO_MH.141118.000128","PL1117","81550","0","0","1875650","23");
INSERT INTO t_pembelian_detail VALUES("171","PO_MH.141118.000129","NC1005","9000","0","0","450000","50");
INSERT INTO t_pembelian_detail VALUES("172","PO_MH.141118.000129","NC1012","16000","0","0","800000","50");
INSERT INTO t_pembelian_detail VALUES("173","PO_MH.151118.000130","TH1001","6400","0","0","3840000","600");
INSERT INTO t_pembelian_detail VALUES("174","PO_MH.151118.000131","PL1015","50294","0","0","854998","17");
INSERT INTO t_pembelian_detail VALUES("175","PO_MH.151118.000131","KWM03710","27000","0","0","270000","10");
INSERT INTO t_pembelian_detail VALUES("176","PO_MH.171118.000132","PL1015","50100","0","0","751500","15");
INSERT INTO t_pembelian_detail VALUES("177","PO_MH.171118.000132","PL03813","45000","0","0","900000","20");
INSERT INTO t_pembelian_detail VALUES("178","PO_MH.171118.000133","HPE4060","342","0","0","171000","500");
INSERT INTO t_pembelian_detail VALUES("179","PO_MH.171118.000133","KPE4060","427","0","0","213500","500");
INSERT INTO t_pembelian_detail VALUES("180","PO_MH.171118.000133","PL03710","20200","0","0","303000","15");
INSERT INTO t_pembelian_detail VALUES("181","PO_MH.171118.000133","PL03813","45000","0","0","675000","15");
INSERT INTO t_pembelian_detail VALUES("182","PO_MH.171118.000133","KPE4060","9400","0","0","28200","3");
INSERT INTO t_pembelian_detail VALUES("183","PO_MH.171118.000133","HPE4060","17100","0","0","171000","10");
INSERT INTO t_pembelian_detail VALUES("184","PO_MH.171118.000133","HHDJUMBO","16000","0","0","80000","5");
INSERT INTO t_pembelian_detail VALUES("185","PO_MH.171118.000134","MHD4060","17100","0","0","51300","3");
INSERT INTO t_pembelian_detail VALUES("186","PO_MH.171118.000135","HPE6080","800","0","0","120000","150");
INSERT INTO t_pembelian_detail VALUES("187","PO_MH.191118.000136","TH1001","6400","0","0","6400000","1000");
INSERT INTO t_pembelian_detail VALUES("188","PO_MH.211118.000137","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("189","PO_MH.231118.000138","HPE4060","342","0","0","1231200","3600");
INSERT INTO t_pembelian_detail VALUES("190","PO_MH.231118.000138","KPE4060","428","0","0","1348200","3150");
INSERT INTO t_pembelian_detail VALUES("191","PO_MH.261118.000139","HPE4060","470","0","0","70500","150");
INSERT INTO t_pembelian_detail VALUES("192","PO_MH.261118.000139","KPE4060","480","0","0","48000","100");
INSERT INTO t_pembelian_detail VALUES("193","PO_MH.261118.000139","HPE901210","2400","0","0","240000","100");
INSERT INTO t_pembelian_detail VALUES("194","PO_MH.261118.000139","HPE901210","2400","0","0","120000","50");
INSERT INTO t_pembelian_detail VALUES("195","PO_MH.261118.000140","SB1005","9000","0","0","47250000","5250");
INSERT INTO t_pembelian_detail VALUES("196","PO_MH.271118.000141","PPK15","4500","0","0","2385000","530");
INSERT INTO t_pembelian_detail VALUES("197","PO_MH.271118.000141","SB1008","12000","0","0","240000","20");
INSERT INTO t_pembelian_detail VALUES("198","PO_MH.271118.000142","PL1015","50500","0","0","505000","10");
INSERT INTO t_pembelian_detail VALUES("199","PO_MH.271118.000142","PL03710","20500","0","0","205000","10");
INSERT INTO t_pembelian_detail VALUES("200","PO_MH.271118.000142","PL03813","45000","0","0","450000","10");
INSERT INTO t_pembelian_detail VALUES("201","PO_MH.271118.000142","KPE4060","339","0","0","203400","600");
INSERT INTO t_pembelian_detail VALUES("202","PO_MH.271118.000143","SB1005","9000","0","0","47250000","5250");
INSERT INTO t_pembelian_detail VALUES("203","PO_MH.271118.000144","NC1005","9000","0","0","47250000","5250");
INSERT INTO t_pembelian_detail VALUES("204","PO_MH.281118.000145","SB1008","12000","0","0","960000","80");
INSERT INTO t_pembelian_detail VALUES("205","PO_MH.011218.000146","PL1015","45882","0","0","688230","15");
INSERT INTO t_pembelian_detail VALUES("206","PO_MH.011218.000146","PL03813","37142","0","0","891408","24");
INSERT INTO t_pembelian_detail VALUES("207","PO_MH.011218.000146","PL03813","37142","0","0","742840","20");
INSERT INTO t_pembelian_detail VALUES("208","PO_MH.011218.000146","PL1015","45882","0","0","917640","20");
INSERT INTO t_pembelian_detail VALUES("209","PO_MH.011218.000146","PL03710","21111","0","0","422220","20");
INSERT INTO t_pembelian_detail VALUES("210","PO_MH.041218.000147","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("211","PO_MH.041218.000148","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("212","PO_MH.051218.000149","PK85","16000","0","0","32000","2");
INSERT INTO t_pembelian_detail VALUES("213","PO_MH.051218.000149","PPB1KG","2900","0","0","29000","10");
INSERT INTO t_pembelian_detail VALUES("214","PO_MH.051218.000149","PPK21","0","0","0","0","1");
INSERT INTO t_pembelian_detail VALUES("215","PO_MH.051218.000149","PPK35","0","0","0","0","1");
INSERT INTO t_pembelian_detail VALUES("216","PO_MH.051218.000150","PPK21","0","0","0","0","20");
INSERT INTO t_pembelian_detail VALUES("217","PO_MH.051218.000150","PPK35","0","0","0","0","10");
INSERT INTO t_pembelian_detail VALUES("218","PO_MH.061218.000151","PK85","16000","0","0","32000","2");
INSERT INTO t_pembelian_detail VALUES("219","PO_MH.061218.000151","PPB1KG","0","0","0","0","10");
INSERT INTO t_pembelian_detail VALUES("220","PO_MH.061218.000151","PPK21","3500","0","0","140000","40");
INSERT INTO t_pembelian_detail VALUES("221","PO_MH.061218.000151","PPK35","5000","0","0","100000","20");
INSERT INTO t_pembelian_detail VALUES("222","PO_MH.061218.000152","PL1120","129000","0","0","1290000","10");
INSERT INTO t_pembelian_detail VALUES("223","PO_MH.061218.000153","HHD21","8000","0","0","400000","50");
INSERT INTO t_pembelian_detail VALUES("224","PO_MH.061218.000153","HHD28","9000","0","0","450000","50");
INSERT INTO t_pembelian_detail VALUES("225","PO_MH.061218.000154","SB1012","19000","0","0","950000","50");
INSERT INTO t_pembelian_detail VALUES("226","PO_MH.071218.000155","PK85","16500","0","0","33000","2");
INSERT INTO t_pembelian_detail VALUES("227","PO_MH.071218.000155","PPB1KG","29000","0","0","290000","10");
INSERT INTO t_pembelian_detail VALUES("228","PO_MH.071218.000155","PPK21","8000","0","0","160000","20");
INSERT INTO t_pembelian_detail VALUES("229","PO_MH.071218.000155","PPK35","13000","0","0","130000","10");
INSERT INTO t_pembelian_detail VALUES("230","PO_MH.071218.000156","TH1001","6400","0","0","12800000","2000");
INSERT INTO t_pembelian_detail VALUES("231","PO_MH.111218.000157","KPE4060","9600","0","0","480000","50");
INSERT INTO t_pembelian_detail VALUES("232","PO_MH.121218.000159","LV0386","92446","0","0","4437408","48");
INSERT INTO t_pembelian_detail VALUES("233","PO_MH.121218.000160","4200000000-aks","2000","0","0","20000","10");
INSERT INTO t_pembelian_detail VALUES("234","PO_MH.121218.000160","4200000000-aks-00059","2000","0","0","40000","20");
INSERT INTO t_pembelian_detail VALUES("235","PO_MH.121218.000161","4200000000-aks-00059","2000","0","0","40000","20");
INSERT INTO t_pembelian_detail VALUES("236","PO_MH.121218.000161","4200000000-aks","2000","0","0","20000","10");
INSERT INTO t_pembelian_detail VALUES("237","PO_MH.121218.000161","4200000000-aks","2000","0","0","20000","10");
INSERT INTO t_pembelian_detail VALUES("238","PO_MH.121218.000162","PL03710","24000","0","0","120000","5");
INSERT INTO t_pembelian_detail VALUES("239","PO_MH.121218.000162","PL1015","53000","0","0","265000","5");
INSERT INTO t_pembelian_detail VALUES("240","PO_MH.131218.000163","SD001","8500","0","0","425000","50");
INSERT INTO t_pembelian_detail VALUES("241","PO_MH.131218.000164","SBB01","9600","0","0","480000","50");
INSERT INTO t_pembelian_detail VALUES("242","PO_MH.131218.000165","KWM03710","28700","0","0","1033200","36");
INSERT INTO t_pembelian_detail VALUES("243","PO_MH.151218.000166","PL03813","37142","0","0","779982","21");
INSERT INTO t_pembelian_detail VALUES("244","PO_MH.171218.000167","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("245","PO_MH.171218.000168","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("246","PO_MH.191218.000169","PL03710","24000","0","0","480000","20");
INSERT INTO t_pembelian_detail VALUES("247","PO_MH.191218.000169","PL03813","37142","0","0","742840","20");
INSERT INTO t_pembelian_detail VALUES("248","PO_MH.191218.000169","PL1015","53000","0","0","265000","5");
INSERT INTO t_pembelian_detail VALUES("249","PO_MH.191218.000170","TH1001","6400","0","0","1280000","200");
INSERT INTO t_pembelian_detail VALUES("250","PO_MH.191218.000171","TH1001","6400","0","0","1177600","184");
INSERT INTO t_pembelian_detail VALUES("251","PO_MH.211218.000172","PL03710","21666","0","0","779976","36");
INSERT INTO t_pembelian_detail VALUES("252","PO_MH.261218.000173","KWM03710","27200","0","0","326400","12");
INSERT INTO t_pembelian_detail VALUES("253","PO_MH.271218.000174","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("254","PO_MH.271218.000175","TH1001","6400","0","0","768000","120");
INSERT INTO t_pembelian_detail VALUES("255","PO_MH.281218.000176","TH1001","6400","0","0","8000000","1250");



DROP TABLE t_penjualan;

CREATE TABLE `t_penjualan` (
  `id_penjualan` varchar(50) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_transaksi` timestamp NULL DEFAULT NULL,
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

INSERT INTO t_penjualan VALUES("SO_MH.011018.000016","2018-10-01 15:42:13","2018-10-01 00:00:00","CUST_MH.011018.000015","05","","220000","0","220000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000017","2018-10-01 15:55:28","2018-10-01 00:00:00","CUST_MH.300918.000014","05","","847500","0","847500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000018","2018-10-01 19:26:48","2018-10-01 00:00:00","CUST_MH.011018.000016","05","","492000","0","492000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000019","2018-10-01 20:09:28","2018-10-01 00:00:00","CUST_MH.011018.000017","05","","1175000","0","1175000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000020","2018-10-01 20:12:19","2018-10-01 00:00:00","CUST_MH.300918.000008","06","","450000","0","450000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000021","2018-10-01 20:22:14","2018-10-01 00:00:00","CUST_MH.300918.000008","06","","1715000","0","1715000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000022","2018-10-01 20:25:56","2018-10-01 00:00:00","CUST_MH.011018.000017","05","","955800","0","955800","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000023","2018-10-01 20:52:59","2018-10-01 00:00:00","CUST_MH.011018.000018","07","","2725000","0","2725000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000024","2018-10-01 21:03:21","2018-10-01 00:00:00","CUST_MH.011018.000018","07","","4600000","0","4600000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000025","2018-10-01 21:06:38","2018-10-01 00:00:00","CUST_MH.300918.000002","07","","1656000","0","1656000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000026","2018-10-01 21:10:43","2018-10-01 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000027","2018-10-01 21:13:25","2018-10-01 00:00:00","CUST_MH.011018.000020","05","","270000","0","270000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000028","2018-10-01 21:20:46","2018-10-01 00:00:00","CUST_MH.300918.000010","06","","542600","0","542600","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000029","2018-10-01 21:23:41","2018-10-01 00:00:00","CUST_MH.011018.000021","05","","2160000","0","2160000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000030","2018-10-01 21:28:56","2018-10-01 00:00:00","CUST_MH.300918.000011","05","","5225000","0","5225000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000031","2018-10-01 21:39:17","2018-10-01 00:00:00","CUST_MH.011018.000022","07","","7852500","0","7852500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000032","2018-10-01 21:45:03","2018-10-01 00:00:00","CUST_MH.300918.000001","05","","1920000","0","1920000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000033","2018-10-01 21:47:28","2018-10-01 00:00:00","CUST_MH.011018.000023","05","","800000","0","800000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000034","2018-10-01 21:50:33","2018-10-01 00:00:00","CUST_MH.011018.000024","08","","1501500","0","1501500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011018.000035","2018-10-01 21:55:03","2018-10-01 00:00:00","CUST_MH.011018.000025","07","","1320000","0","1320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011118.000075","2018-11-01 10:45:14","2018-11-01 00:00:00","CUST_MH.300918.000004","05","","248000","0","248000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011118.000076","2018-11-01 10:47:16","2018-11-01 00:00:00","CUST_MH.300918.000012","","","435000","0","435000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.011218.000107","2018-12-01 08:54:34","0000-00-00 00:00:00","CUST_MH.300918.000008","06","","3954000","0","3954000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000036","2018-10-02 09:38:23","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000037","2018-10-02 09:44:58","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000038","2018-10-02 09:50:16","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000039","2018-10-02 13:29:52","2018-10-02 00:00:00","CUST_MH.021018.000027","08","","13120000","0","13120000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021118.000077","2018-11-02 08:16:27","2018-11-02 00:00:00","CUST_MH.111018.000030","05","","1675920","0","1675920","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.031018.000040","2018-10-03 09:36:51","2018-10-03 00:00:00","CUST_MH.021018.000027","08","","13120000","0","13120000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.041218.000108","2018-12-04 08:52:52","2018-12-04 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.041218.000109","2018-12-04 10:34:28","2018-12-04 00:00:00","CUST_MH.271118.000039","05","","1080000","0","1080000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.041218.000110","2018-12-04 10:41:32","2018-12-04 00:00:00","CUST_MH.271118.000039","05","","108000","0","108000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.041218.000111","2018-12-04 10:51:14","2018-12-04 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.051118.000078","2018-11-05 11:04:48","2018-11-05 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.051218.000112","2018-12-05 15:55:06","2018-12-05 00:00:00","CUST_MH.271118.000039","05","","216000","0","216000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.051218.000113","2018-12-05 16:18:57","2018-12-05 00:00:00","CUST_MH.271118.000040","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061118.000079","2018-11-06 09:07:02","2018-11-06 00:00:00","CUST_MH.300918.000008","06","","440000","0","440000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061118.000080","2018-11-06 09:19:55","2018-11-06 00:00:00","CUST_MH.171018.000032","05","","360000","0","360000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061218.000114","2018-12-06 08:45:26","2018-12-06 00:00:00","CUST_MH.271118.000040","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061218.000115","2018-12-06 08:57:15","2018-12-06 00:00:00","CUST_MH.300918.000010","06","","1290000","0","1290000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061218.000116","2018-12-06 09:01:19","2018-12-06 00:00:00","CUST_MH.300918.000008","06","","450000","0","450000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061218.000117","2018-12-06 13:36:42","2018-12-06 00:00:00","CUST_MH.011018.000015","05","","1200000","0","1200000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.061218.000118","2018-12-06 15:32:24","2018-12-06 00:00:00","CUST_MH.141118.000035","08","","1200000","0","1200000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.071218.000119","2018-12-07 08:34:34","2018-12-07 00:00:00","CUST_MH.300918.000012","05","","795000","0","795000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.071218.000120","2018-12-07 11:45:27","2018-12-07 00:00:00","CUST_MH.271118.000040","05","","920000","0","920000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.071218.000121","2018-12-07 16:05:05","2018-12-07 00:00:00","CUST_MH.111018.000030","06","","16720000","0","16720000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.081018.000041","2018-10-08 09:13:47","2018-10-08 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.101018.000042","2018-10-10 11:10:01","2018-10-10 00:00:00","CUST_MH.300918.000008","06","","390000","0","390000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000043","2018-10-11 10:13:02","2018-10-11 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000044","2018-10-11 10:20:23","2018-10-11 00:00:00","CUST_MH.300918.000008","06","","438000","0","438000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000045","2018-10-11 10:30:23","2018-10-11 00:00:00","CUST_MH.300918.000010","06","","","","","2018-10-11 10:35:38","","");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000046","2018-10-11 10:33:32","2018-10-11 00:00:00","CUST_MH.300918.000010","06","","","","","2018-10-11 11:07:27","","");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000047","2018-10-11 11:08:29","2018-10-23 00:00:00","CUST_MH.300918.000010","06","","860000","0","860000","2018-12-06 08:58:04","","");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000048","2018-10-11 11:48:55","2018-10-11 00:00:00","CUST_MH.111018.000029","05","","1540000","0","1540000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000049","2018-10-11 11:58:26","2018-10-11 00:00:00","CUST_MH.021018.000027","08","","13120000","0","13120000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000050","2018-10-11 12:11:36","2018-10-11 00:00:00","CUST_MH.111018.000030","06","","","","","2018-10-11 12:16:58","","");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000051","2018-10-11 12:15:05","2018-10-11 00:00:00","CUST_MH.111018.000030","06","","8360000","0","8360000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000052","2018-10-11 12:42:06","2018-10-11 00:00:00","CUST_MH.011018.000016","05","","","","","2018-10-17 08:30:38","","");
INSERT INTO t_penjualan VALUES("SO_MH.111018.000053","2018-10-11 12:49:14","2018-10-17 00:00:00","CUST_MH.011018.000015","06","","","","","2018-10-17 08:30:27","","");
INSERT INTO t_penjualan VALUES("SO_MH.111218.000122","2018-12-11 08:58:39","2018-12-11 00:00:00","CUST_MH.111018.000029","05","","770000","0","770000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.121118.000081","2018-11-12 09:14:48","2018-11-12 00:00:00","CUST_MH.300918.000010","06","","3490000","0","3490000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.121118.000082","2018-11-12 10:50:29","2018-11-12 00:00:00","CUST_MH.011018.000017","05","","400000","0","400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.121218.000123","2018-12-12 08:51:50","2018-12-12 00:00:00","CUST_MH.011018.000017","08","","2374032","593508","1780524","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.121218.000124","2018-12-12 09:23:15","2018-12-12 00:00:00","CUST_MH.121218.000041","08","","408710","0","408710","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.121218.000125","2018-12-12 09:49:28","2018-12-12 00:00:00","CUST_MH.121218.000041","","","43050","0","43050","0000-00-00 00:00:00","","");
INSERT INTO t_penjualan VALUES("SO_MH.121218.000126","2018-12-12 14:54:30","2018-12-12 00:00:00","CUST_MH.271118.000038","06","","586400","0","586400","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.131118.000083","2018-11-13 08:50:26","2018-11-13 00:00:00","CUST_MH.011018.000019","05","","1280000","0","1280000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.131118.000084","2018-11-13 08:54:13","2018-11-13 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.131218.000127","2018-12-13 10:07:48","2018-12-13 00:00:00","CUST_MH.111018.000030","06","","1122000","0","1122000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.131218.000128","2018-12-13 10:12:08","2018-12-13 00:00:00","CUST_MH.300918.000010","06","","800000","0","800000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.141118.000085","2018-11-14 10:18:18","2018-11-14 00:00:00","CUST_MH.300918.000010","06","","2200000","0","2200000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.141118.000086","2018-11-14 11:14:07","2018-11-14 00:00:00","CUST_MH.141118.000035","08","","1625000","0","1625000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.151118.000087","2018-11-15 09:39:27","2018-11-15 00:00:00","CUST_MH.011018.000021","05","","4909200","0","4909200","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.151118.000088","2018-11-15 10:36:48","2018-11-15 00:00:00","CUST_MH.300918.000010","06","Omzet Bulan Oktober, Hny revisi jumlah total","1309500","0","1309500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.151218.000129","2018-12-15 09:37:13","2018-12-15 00:00:00","CUST_MH.300918.000010","06","","903000","0","903000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000054","2018-10-17 09:05:20","2018-10-17 00:00:00","CUST_MH.171018.000031","05","","680000","0","680000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000055","2018-10-17 09:12:03","2018-10-17 00:00:00","CUST_MH.171018.000032","05","","440000","0","440000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000056","2018-10-17 09:28:56","2018-10-17 00:00:00","CUST_MH.171018.000032","07","","506250","0","506250","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000057","2018-10-17 11:01:41","2018-10-17 00:00:00","CUST_MH.011018.000015","05","","300000","0","300000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000058","2018-10-17 11:39:35","2018-10-17 00:00:00","CUST_MH.300918.000010","06","","1724500","0","1724500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171018.000059","2018-10-17 16:05:00","2018-10-17 00:00:00","CUST_MH.171018.000032","07","","10817000","0","10817000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171118.000089","2018-11-17 08:30:58","2018-11-17 00:00:00","CUST_MH.300918.000008","05","","440000","0","440000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171118.000090","2018-11-17 08:39:26","2018-11-17 00:00:00","CUST_MH.300918.000008","06","","4470000","0","4470000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171118.000091","2018-11-17 08:51:19","2018-11-17 00:00:00","CUST_MH.171118.000037","05","","2488224","0","2488224","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171118.000092","2018-11-17 08:59:16","2018-11-17 00:00:00","CUST_MH.171118.000036","05","","735000","0","735000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171218.000130","2018-12-17 09:51:00","2018-12-17 00:00:00","CUST_MH.111018.000030","06","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.171218.000131","2018-12-17 09:53:51","2018-12-17 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191018.000060","2018-10-19 09:23:11","2018-10-19 00:00:00","CUST_MH.300918.000008","","","379600","0","379600","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191018.000061","2018-10-19 09:55:31","2018-10-19 00:00:00","CUST_MH.191018.000033","05","","300000","0","300000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191118.000093","2018-11-19 09:00:14","2018-11-19 00:00:00","CUST_MH.111018.000030","06","","8360000","0","8360000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191218.000132","2018-12-19 08:49:13","2018-12-19 00:00:00","CUST_MH.011018.000017","05","","2736117","0","2736117","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191218.000133","2018-12-19 09:14:07","2018-12-19 00:00:00","CUST_MH.300918.000008","06","","440000","0","440000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191218.000134","2018-12-19 09:19:53","2018-12-19 00:00:00","CUST_MH.011018.000019","05","","1379000","0","1379000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.191218.000135","2018-12-19 14:56:01","2018-12-19 00:00:00","CUST_MH.011018.000019","05","","1288000","0","1288000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.201018.000062","2018-10-20 09:29:17","2018-10-20 00:00:00","CUST_MH.111018.000030","06","","8360000","0","8360000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.201218.000136","2018-12-20 09:12:50","2018-12-20 00:00:00","CUST_MH.111018.000029","05","","2200000","0","2200000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.201218.000137","2018-12-20 09:15:54","2018-12-20 00:00:00","CUST_MH.111018.000029","05","","","","","0000-00-00 00:00:00","","");
INSERT INTO t_penjualan VALUES("SO_MH.211118.000094","2018-11-21 09:56:17","2018-11-21 00:00:00","CUST_MH.011018.000019","05","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.211218.000138","2018-12-21 08:55:01","2018-12-21 00:00:00","CUST_MH.300918.000010","06","","485000","0","485000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.221018.000063","2018-10-22 10:19:01","2018-10-22 00:00:00","CUST_MH.300918.000008","","","432000","0","432000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.221018.000064","2018-10-22 10:23:54","2018-10-22 00:00:00","CUST_MH.300918.000008","06","","","","","2018-10-22 10:40:04","","");
INSERT INTO t_penjualan VALUES("SO_MH.221018.000065","2018-10-22 10:38:30","0000-00-00 00:00:00","CUST_MH.300918.000008","06","","","","","2018-10-22 10:40:24","","");
INSERT INTO t_penjualan VALUES("SO_MH.231018.000066","2018-10-23 09:12:00","2018-10-23 00:00:00","CUST_MH.011018.000019","06","","1400000","0","1400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.231018.000067","2018-10-23 09:54:19","2018-10-23 00:00:00","CUST_MH.231018.000034","05","","9600000","0","9600000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.231118.000095","2018-11-23 09:00:18","2018-11-23 00:00:00","CUST_MH.011018.000020","05","","240000","0","240000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.231118.000096","2018-11-23 09:02:40","2018-11-23 00:00:00","CUST_MH.011018.000020","05","","370000","0","370000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.231118.000097","2018-11-23 09:18:33","2018-11-23 00:00:00","CUST_MH.011018.000022","05","","6082500","0","6082500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.261018.000068","2018-10-26 09:41:46","2018-10-26 00:00:00","CUST_MH.011018.000021","05","","1963680","0","1963680","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.261118.000098","2018-11-26 09:34:22","0000-00-00 00:00:00","CUST_MH.300918.000014","05","","547500","0","547500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.261118.000099","2018-11-26 09:43:26","2018-11-26 00:00:00","CUST_MH.021018.000027","08","","67005750","0","67005750","2018-11-27 13:30:33","","");
INSERT INTO t_penjualan VALUES("SO_MH.261218.000139","2018-12-26 08:57:23","2018-12-26 00:00:00","CUST_MH.300918.000008","06","","300000","0","300000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.261218.000140","2018-12-26 09:59:50","2018-12-26 00:00:00","CUST_MH.300918.000010","06","","480000","0","480000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271118.000100","2018-11-27 10:35:21","2018-11-27 00:00:00","CUST_MH.271118.000038","06","","4505000","0","4505000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271118.000101","2018-11-27 10:37:51","2018-11-27 00:00:00","CUST_MH.271118.000039","05","","370000","0","370000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271118.000102","2018-11-27 10:56:12","2018-11-27 00:00:00","CUST_MH.271118.000040","05","","2741000","0","2741000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271118.000103","2018-11-27 13:30:08","0000-00-00 00:00:00","CUST_MH.021018.000027","08","","67005750","0","67005750","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271118.000104","2018-11-27 13:49:20","2018-11-27 00:00:00","CUST_MH.021018.000027","08","","67268250","0","67268250","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271218.000141","2018-12-27 10:28:06","2018-12-27 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271218.000142","2018-12-27 10:43:07","2018-12-27 00:00:00","CUST_MH.271218.000042","08","","2870000","0","2870000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.271218.000143","2018-12-27 10:46:46","2018-12-27 00:00:00","CUST_MH.011018.000021","05","","981840","0","981840","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.281118.000105","2018-11-28 09:17:30","2018-11-28 00:00:00","CUST_MH.171018.000032","05","","1440000","0","1440000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.281118.000106","2018-11-28 09:23:00","2018-11-28 00:00:00","CUST_MH.271118.000039","05","","1080000","0","1080000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.281218.000144","2018-12-28 09:43:58","2018-12-28 00:00:00","CUST_MH.271118.000038","06","","10796250","0","10796250","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.281218.000145","2018-12-28 15:14:49","2018-12-28 00:00:00","CUST_MH.011018.000025","08","","1349280","337320","1011960","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000001","2018-09-30 09:50:49","2018-09-30 00:00:00","CUST_MH.300918.000001","","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000002","2018-09-30 10:00:50","2018-09-30 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000003","2018-09-30 10:08:13","2018-09-30 00:00:00","CUST_MH.300918.000002","07","","1632000","0","1632000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000004","2018-09-30 10:20:30","2018-09-30 00:00:00","CUST_MH.300918.000003","08","","1040000","0","1040000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000005","2018-09-30 10:29:31","2018-09-30 00:00:00","CUST_MH.300918.000004","05","","822000","0","822000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000006","2018-09-30 10:35:17","2018-09-30 00:00:00","CUST_MH.300918.000005","05","","67500","0","67500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000007","2018-09-30 12:30:01","2018-09-30 00:00:00","CUST_MH.300918.000006","05","","540000","0","540000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000008","2018-09-30 12:39:37","2018-09-30 00:00:00","CUST_MH.300918.000007","05","","475000","0","475000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000009","2018-09-30 12:44:43","2018-09-30 00:00:00","CUST_MH.300918.000008","06","","450000","0","450000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000010","2018-09-30 12:58:32","2018-09-30 00:00:00","CUST_MH.300918.000009","05","","550000","0","550000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000011","2018-09-30 13:05:46","2018-09-30 00:00:00","CUST_MH.300918.000010","06","","","","","2018-09-30 13:14:24","","");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000012","2018-09-30 13:13:49","2018-09-30 00:00:00","CUST_MH.300918.000010","06","","379500","0","379500","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000013","2018-09-30 13:17:23","2018-09-30 00:00:00","CUST_MH.300918.000011","05","","400000","0","400000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000014","2018-09-30 13:22:39","2018-09-30 00:00:00","CUST_MH.300918.000012","05","","435000","0","435000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.300918.000015","2018-09-30 13:29:40","2018-09-30 00:00:00","CUST_MH.300918.000013","06","","3450000","0","3450000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.301018.000069","2018-10-30 09:08:07","2018-10-30 00:00:00","CUST_MH.300918.000001","05","","960000","0","960000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.301018.000070","2018-10-30 10:13:12","2018-10-30 00:00:00","CUST_MH.011018.000017","05","","310000","0","310000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.301018.000071","2018-10-30 13:01:36","2018-10-30 00:00:00","CUST_MH.300918.000010","06","","1470000","0","1470000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.311018.000072","2018-10-31 08:48:05","2018-10-31 00:00:00","CUST_MH.011018.000019","","","528000","0","528000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.311018.000073","2018-10-31 09:31:23","0000-00-00 00:00:00","CUST_MH.300918.000014","05","Discount 20%","225000","0","225000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.311018.000074","2018-10-31 09:52:16","2018-10-31 00:00:00","CUST_MH.300918.000009","05","","874000","0","874000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.311018.000075","2018-10-31 09:52:16","2018-10-31 00:00:00","CUST_MH.300918.000009","05","","","","","0000-00-00 00:00:00","","");



DROP TABLE t_penjualan_detail;

CREATE TABLE `t_penjualan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_penjualan` varchar(255) DEFAULT NULL,
  `fk_barang` varchar(255) DEFAULT NULL,
  `gross_jual_barang` double DEFAULT NULL,
  `diskon_jual_barang` double DEFAULT NULL,
  `diskon_persen` varchar(10) DEFAULT NULL,
  `netto_jual_barang` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

INSERT INTO t_penjualan_detail VALUES("1","SO_MH.300918.000001","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("2","SO_MH.300918.000002","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("3","SO_MH.300918.000003","TH1001","6800","0","","1632000","240");
INSERT INTO t_penjualan_detail VALUES("4","SO_MH.300918.000004","187955","52000","0","","1040000","20");
INSERT INTO t_penjualan_detail VALUES("5","SO_MH.300918.000005","TG4001","1500","0","","150000","100");
INSERT INTO t_penjualan_detail VALUES("6","SO_MH.300918.000005","TH1001","7000","0","","672000","96");
INSERT INTO t_penjualan_detail VALUES("7","SO_MH.300918.000006","KPE6070","675","0","","67500","100");
INSERT INTO t_penjualan_detail VALUES("8","SO_MH.300918.000007","KPE8010","1800","0","","540000","300");
INSERT INTO t_penjualan_detail VALUES("9","SO_MH.300918.000008","KPE6010","950","0","","475000","500");
INSERT INTO t_penjualan_detail VALUES("10","SO_MH.300918.000009","KPE6010","30000","0","","450000","15");
INSERT INTO t_penjualan_detail VALUES("11","SO_MH.300918.000010","PKP01001","5500","0","","550000","100");
INSERT INTO t_penjualan_detail VALUES("12","SO_MH.300918.000012","PLM03710","37950","0","","379500","10");
INSERT INTO t_penjualan_detail VALUES("13","SO_MH.300918.000013","KPE8010","2000","0","","400000","200");
INSERT INTO t_penjualan_detail VALUES("14","SO_MH.300918.000014","KPE6010","1300","0","","195000","150");
INSERT INTO t_penjualan_detail VALUES("15","SO_MH.300918.000014","KPE8010","1600","0","","240000","150");
INSERT INTO t_penjualan_detail VALUES("16","SO_MH.300918.000015","PLHD6010046","1150","0","","3450000","3000");
INSERT INTO t_penjualan_detail VALUES("17","SO_MH.011018.000016","SB1012","22000","0","","220000","10");
INSERT INTO t_penjualan_detail VALUES("18","SO_MH.011018.000017","KPE4060","750","0","","45000","60");
INSERT INTO t_penjualan_detail VALUES("19","SO_MH.011018.000017","KPE8010","2200","0","","330000","150");
INSERT INTO t_penjualan_detail VALUES("20","SO_MH.011018.000017","HPE901210","2500","0","","375000","150");
INSERT INTO t_penjualan_detail VALUES("21","SO_MH.011018.000017","HPE4060","650","0","","97500","150");
INSERT INTO t_penjualan_detail VALUES("22","SO_MH.011018.000018","STC01","23000","0","","230000","10");
INSERT INTO t_penjualan_detail VALUES("23","SO_MH.011018.000018","TH1001","8000","0","","192000","24");
INSERT INTO t_penjualan_detail VALUES("24","SO_MH.011018.000018","TK001","3500","0","","70000","20");
INSERT INTO t_penjualan_detail VALUES("25","SO_MH.011018.000019","CH01","235000","0","","1175000","5");
INSERT INTO t_penjualan_detail VALUES("26","SO_MH.011018.000020","KPE6010","30000","0","","450000","15");
INSERT INTO t_penjualan_detail VALUES("27","SO_MH.011018.000021","PL03710","85000","0","","425000","5");
INSERT INTO t_penjualan_detail VALUES("28","SO_MH.011018.000021","PL03813","120000","0","","600000","5");
INSERT INTO t_penjualan_detail VALUES("29","SO_MH.011018.000021","PL1015","138000","0","","690000","5");
INSERT INTO t_penjualan_detail VALUES("30","SO_MH.011018.000022","PL03710","23760","0","","237600","10");
INSERT INTO t_penjualan_detail VALUES("31","SO_MH.011018.000022","PL03813","47880","0","","718200","15");
INSERT INTO t_penjualan_detail VALUES("32","SO_MH.011018.000023","HPE8010","1292","0","","1292000","1000");
INSERT INTO t_penjualan_detail VALUES("33","SO_MH.011018.000023","KPE8010","1433","0","","1433000","1000");
INSERT INTO t_penjualan_detail VALUES("34","SO_MH.011018.000024","HPE8010","2200","0","","2200000","1000");
INSERT INTO t_penjualan_detail VALUES("35","SO_MH.011018.000024","KPE8010","2400","0","","2400000","1000");
INSERT INTO t_penjualan_detail VALUES("36","SO_MH.011018.000025","TH1001","6900","0","","1656000","240");
INSERT INTO t_penjualan_detail VALUES("37","SO_MH.011018.000026","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("38","SO_MH.011018.000027","SB1008","18000","0","","270000","15");
INSERT INTO t_penjualan_detail VALUES("39","SO_MH.011018.000028","PL03610","28800","0","","57600","2");
INSERT INTO t_penjualan_detail VALUES("40","SO_MH.011018.000028","PL03710","24250","0","","485000","20");
INSERT INTO t_penjualan_detail VALUES("41","SO_MH.011018.000029","TH1001","9000","0","","2160000","240");
INSERT INTO t_penjualan_detail VALUES("42","SO_MH.011018.000030","PLHD80100","2090","0","","5225000","2500");
INSERT INTO t_penjualan_detail VALUES("43","SO_MH.011018.000031","HPE4060","545","0","","2043750","3750");
INSERT INTO t_penjualan_detail VALUES("44","SO_MH.011018.000031","KPE4060","600","0","","2400000","4000");
INSERT INTO t_penjualan_detail VALUES("45","SO_MH.011018.000031","HPE6010023","1818","0","","3408750","1875");
INSERT INTO t_penjualan_detail VALUES("46","SO_MH.011018.000032","TH1001","8000","0","","1920000","240");
INSERT INTO t_penjualan_detail VALUES("47","SO_MH.011018.000033","SB1008","16000","0","","800000","50");
INSERT INTO t_penjualan_detail VALUES("48","SO_MH.011018.000034","SB1003","10500","0","","1501500","143");
INSERT INTO t_penjualan_detail VALUES("49","SO_MH.011018.000035","101090","440000","0","","1320000","3");
INSERT INTO t_penjualan_detail VALUES("50","SO_MH.021018.000036","SB1008","16000","0","","320000","20");
INSERT INTO t_penjualan_detail VALUES("51","SO_MH.021018.000037","SB1008","16000","0","","320000","20");
INSERT INTO t_penjualan_detail VALUES("52","SO_MH.021018.000038","SB1008","16000","0","","320000","20");
INSERT INTO t_penjualan_detail VALUES("53","SO_MH.021018.000039","SB1005","13120","0","","13120000","1000");
INSERT INTO t_penjualan_detail VALUES("54","SO_MH.031018.000040","SB1005","13120","0","","13120000","1000");
INSERT INTO t_penjualan_detail VALUES("55","SO_MH.081018.000041","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("56","SO_MH.101018.000042","KPE6010","30000","0","","390000","13");
INSERT INTO t_penjualan_detail VALUES("57","SO_MH.111018.000043","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("58","SO_MH.111018.000044","KPE6010","30000","0","","90000","3");
INSERT INTO t_penjualan_detail VALUES("59","SO_MH.111018.000044","KPE6010","29000","0","","348000","12");
INSERT INTO t_penjualan_detail VALUES("60","SO_MH.111018.000047","PL03813","43000","0","","860000","20");
INSERT INTO t_penjualan_detail VALUES("61","SO_MH.111018.000048","KPE4060","15400","0","","1540000","100");
INSERT INTO t_penjualan_detail VALUES("62","SO_MH.111018.000049","SB1005","13120","0","","13120000","1000");
INSERT INTO t_penjualan_detail VALUES("63","SO_MH.111018.000051","TH1001","8360","0","","8360000","1000");
INSERT INTO t_penjualan_detail VALUES("64","SO_MH.171018.000054","TG4001","1700","0","","680000","400");
INSERT INTO t_penjualan_detail VALUES("65","SO_MH.171018.000055","GC01","220000","0","","440000","2");
INSERT INTO t_penjualan_detail VALUES("66","SO_MH.171018.000056","KPE4060","1350","0","","506250","375");
INSERT INTO t_penjualan_detail VALUES("67","SO_MH.171018.000057","UPE4060","15000","0","","300000","20");
INSERT INTO t_penjualan_detail VALUES("68","SO_MH.171018.000058","PL03813","43000","0","","860000","20");
INSERT INTO t_penjualan_detail VALUES("69","SO_MH.171018.000058","PLM03710","37950","0","","379500","10");
INSERT INTO t_penjualan_detail VALUES("70","SO_MH.171018.000058","PL03710","24250","0","","485000","20");
INSERT INTO t_penjualan_detail VALUES("71","SO_MH.171018.000059","TH1001","7500","0","","37500","5");
INSERT INTO t_penjualan_detail VALUES("72","SO_MH.171018.000059","WP035","17000","0","","850000","50");
INSERT INTO t_penjualan_detail VALUES("73","SO_MH.171018.000059","KHD015","5500","0","","275000","50");
INSERT INTO t_penjualan_detail VALUES("74","SO_MH.171018.000059","KT021","11500","0","","345000","30");
INSERT INTO t_penjualan_detail VALUES("75","SO_MH.171018.000059","STSV","18000","0","","432000","24");
INSERT INTO t_penjualan_detail VALUES("76","SO_MH.171018.000059","HHD8010","1500","0","","7500000","5000");
INSERT INTO t_penjualan_detail VALUES("77","SO_MH.171018.000059","TSI8L","80000","0","","240000","3");
INSERT INTO t_penjualan_detail VALUES("78","SO_MH.171018.000059","KHD4060","700","0","","1137500","1625");
INSERT INTO t_penjualan_detail VALUES("79","SO_MH.191018.000060","KPE6010","29200","0","","379600","13");
INSERT INTO t_penjualan_detail VALUES("80","SO_MH.191018.000061","KPE8010","3000","0","","300000","100");
INSERT INTO t_penjualan_detail VALUES("81","SO_MH.201018.000062","TH1001","8360","0","","8360000","1000");
INSERT INTO t_penjualan_detail VALUES("82","SO_MH.221018.000063","HHD60100","28000","0","","140000","5");
INSERT INTO t_penjualan_detail VALUES("83","SO_MH.221018.000063","KPE6010","29200","0","","292000","10");
INSERT INTO t_penjualan_detail VALUES("84","SO_MH.231018.000066","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("85","SO_MH.231018.000067","TH1001","9600","0","","9600000","1000");
INSERT INTO t_penjualan_detail VALUES("86","SO_MH.261018.000068","TH1001","8182","0","","1963680","240");
INSERT INTO t_penjualan_detail VALUES("87","SO_MH.301018.000069","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("88","SO_MH.301018.000070","PB1420","31000","0","","310000","10");
INSERT INTO t_penjualan_detail VALUES("89","SO_MH.301018.000071","PL1015","53500","0","","1070000","20");
INSERT INTO t_penjualan_detail VALUES("90","SO_MH.301018.000071","KWM03710","40000","0","","400000","10");
INSERT INTO t_penjualan_detail VALUES("91","SO_MH.311018.000072","TG4001","16500","0","","528000","32");
INSERT INTO t_penjualan_detail VALUES("92","SO_MH.311018.000073","HPE6080","1500","0","","225000","150");
INSERT INTO t_penjualan_detail VALUES("93","SO_MH.311018.000074","KPE608028","1740","0","","174000","100");
INSERT INTO t_penjualan_detail VALUES("94","SO_MH.311018.000074","PL03813","70000","0","","700000","10");
INSERT INTO t_penjualan_detail VALUES("95","SO_MH.011118.000075","TH1001","7000","0","","98000","14");
INSERT INTO t_penjualan_detail VALUES("96","SO_MH.011118.000075","TG4001","1500","0","","150000","100");
INSERT INTO t_penjualan_detail VALUES("97","SO_MH.011118.000076","KPE608028","1600","0","","240000","150");
INSERT INTO t_penjualan_detail VALUES("98","SO_MH.011118.000076","KPE608028","1300","0","","195000","150");
INSERT INTO t_penjualan_detail VALUES("99","SO_MH.021118.000077","PS001","38630","0","","927120","24");
INSERT INTO t_penjualan_detail VALUES("100","SO_MH.021118.000077","SD001","10400","0","","748800","72");
INSERT INTO t_penjualan_detail VALUES("101","SO_MH.051118.000078","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("102","SO_MH.061118.000079","KPE608028","30000","0","","300000","10");
INSERT INTO t_penjualan_detail VALUES("103","SO_MH.061118.000079","HPE609025","28000","0","","140000","5");
INSERT INTO t_penjualan_detail VALUES("104","SO_MH.061118.000080","SB1008","18000","0","","360000","20");
INSERT INTO t_penjualan_detail VALUES("105","SO_MH.121118.000081","PL1117","110000","0","","2200000","20");
INSERT INTO t_penjualan_detail VALUES("106","SO_MH.121118.000081","PL1120","129000","0","","1290000","10");
INSERT INTO t_penjualan_detail VALUES("107","SO_MH.121118.000082","KPE8010017","1600","0","","400000","250");
INSERT INTO t_penjualan_detail VALUES("108","SO_MH.131118.000083","TG4001","16000","0","","1280000","80");
INSERT INTO t_penjualan_detail VALUES("109","SO_MH.131118.000084","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("110","SO_MH.141118.000085","PL1117","110000","0","","2200000","20");
INSERT INTO t_penjualan_detail VALUES("111","SO_MH.141118.000086","NC1005","13500","0","","675000","50");
INSERT INTO t_penjualan_detail VALUES("112","SO_MH.141118.000086","NC1012","19000","0","","950000","50");
INSERT INTO t_penjualan_detail VALUES("113","SO_MH.151118.000087","TH1001","8182","0","","4909200","600");
INSERT INTO t_penjualan_detail VALUES("114","SO_MH.151118.000088","PL1015","53500","0","","909500","17");
INSERT INTO t_penjualan_detail VALUES("115","SO_MH.151118.000088","KWM03710","40000","0","","400000","10");
INSERT INTO t_penjualan_detail VALUES("116","SO_MH.171118.000089","HPE609025","28000","0","","140000","5");
INSERT INTO t_penjualan_detail VALUES("117","SO_MH.171118.000089","KPE608028","30000","0","","300000","10");
INSERT INTO t_penjualan_detail VALUES("118","SO_MH.171118.000090","PL1015","138000","0","","2070000","15");
INSERT INTO t_penjualan_detail VALUES("119","SO_MH.171118.000090","PL03813","120000","0","","2400000","20");
INSERT INTO t_penjualan_detail VALUES("120","SO_MH.171118.000091","PL03710","35600","0","","534000","15");
INSERT INTO t_penjualan_detail VALUES("121","SO_MH.171118.000091","PL03813","47600","0","","714000","15");
INSERT INTO t_penjualan_detail VALUES("122","SO_MH.171118.000091","MHD4060","33364","0","","100092","3");
INSERT INTO t_penjualan_detail VALUES("123","SO_MH.171118.000091","KPE4060","33364","0","","100092","3");
INSERT INTO t_penjualan_detail VALUES("124","SO_MH.171118.000091","HHDJUMBO","22000","0","","110000","5");
INSERT INTO t_penjualan_detail VALUES("125","SO_MH.171118.000091","HHDJUMBO","22000","0","","110000","5");
INSERT INTO t_penjualan_detail VALUES("126","SO_MH.171118.000091","HPE4060","31694","0","","316940","10");
INSERT INTO t_penjualan_detail VALUES("127","SO_MH.171118.000091","HPE609025","1500","0","","150000","100");
INSERT INTO t_penjualan_detail VALUES("128","SO_MH.171118.000091","KPE608028","1500","0","","150000","100");
INSERT INTO t_penjualan_detail VALUES("129","SO_MH.171118.000091","HPE6080","1354","0","","203100","150");
INSERT INTO t_penjualan_detail VALUES("130","SO_MH.171118.000092","HPE4060","735","0","","367500","500");
INSERT INTO t_penjualan_detail VALUES("131","SO_MH.171118.000092","KPE4060","735","0","","367500","500");
INSERT INTO t_penjualan_detail VALUES("132","SO_MH.191118.000093","TH1001","8360","0","","8360000","1000");
INSERT INTO t_penjualan_detail VALUES("133","SO_MH.211118.000094","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("134","SO_MH.231118.000095","SB1008","12000","0","","240000","20");
INSERT INTO t_penjualan_detail VALUES("135","SO_MH.231118.000096","SB1008","18500","0","","370000","20");
INSERT INTO t_penjualan_detail VALUES("136","SO_MH.231118.000097","HPE4060","600","0","","2160000","3600");
INSERT INTO t_penjualan_detail VALUES("137","SO_MH.231118.000097","KPE4060","650","0","","2047500","3150");
INSERT INTO t_penjualan_detail VALUES("138","SO_MH.231118.000097","HPE609025","1400","0","","1050000","750");
INSERT INTO t_penjualan_detail VALUES("139","SO_MH.231118.000097","KPE608028","1650","0","","825000","500");
INSERT INTO t_penjualan_detail VALUES("140","SO_MH.261118.000098","HPE901210","2500","0","","375000","150");
INSERT INTO t_penjualan_detail VALUES("141","SO_MH.261118.000098","HPE4060","650","0","","97500","150");
INSERT INTO t_penjualan_detail VALUES("142","SO_MH.261118.000098","KPE4060","750","0","","75000","100");
INSERT INTO t_penjualan_detail VALUES("143","SO_MH.261118.000099","SB1005","12763","0","","67005750","5250");
INSERT INTO t_penjualan_detail VALUES("144","SO_MH.271118.000100","PPK15","8500","0","","4505000","530");
INSERT INTO t_penjualan_detail VALUES("145","SO_MH.271118.000101","SB1008","18500","0","","370000","20");
INSERT INTO t_penjualan_detail VALUES("146","SO_MH.271118.000102","PL1015","101000","0","","1010000","10");
INSERT INTO t_penjualan_detail VALUES("147","SO_MH.271118.000102","PL03710","51000","0","","510000","10");
INSERT INTO t_penjualan_detail VALUES("148","SO_MH.271118.000102","PL03813","78900","0","","789000","10");
INSERT INTO t_penjualan_detail VALUES("149","SO_MH.271118.000102","KPE4060","720","0","","432000","600");
INSERT INTO t_penjualan_detail VALUES("150","SO_MH.271118.000103","SB1005","12763","0","","67005750","5250");
INSERT INTO t_penjualan_detail VALUES("151","SO_MH.271118.000104","NC1005","12813","0","","67268250","5250");
INSERT INTO t_penjualan_detail VALUES("152","SO_MH.281118.000105","SB1008","18000","0","","1440000","80");
INSERT INTO t_penjualan_detail VALUES("153","SO_MH.281118.000106","CPE6585","1500","0","","1080000","720");
INSERT INTO t_penjualan_detail VALUES("154","SO_MH.011218.000107","PL1015","110000","0","","1650000","15");
INSERT INTO t_penjualan_detail VALUES("155","SO_MH.011218.000107","PL03813","96000","0","","2304000","24");
INSERT INTO t_penjualan_detail VALUES("156","SO_MH.041218.000108","TH1001","7000","0","","1400000","200");
INSERT INTO t_penjualan_detail VALUES("157","SO_MH.041218.000109","CPE6585","720","0","","1080000","1500");
INSERT INTO t_penjualan_detail VALUES("158","SO_MH.041218.000110","CPE6585","720","0","","108000","150");
INSERT INTO t_penjualan_detail VALUES("159","SO_MH.041218.000111","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("160","SO_MH.051218.000112","CPE6585","720","0","","216000","300");
INSERT INTO t_penjualan_detail VALUES("161","SO_MH.051218.000113","PK85","25000","0","","50000","2");
INSERT INTO t_penjualan_detail VALUES("162","SO_MH.051218.000113","PPB1KG","5000","0","","50000","10");
INSERT INTO t_penjualan_detail VALUES("163","SO_MH.051218.000113","PPK21","7000","0","","140000","20");
INSERT INTO t_penjualan_detail VALUES("164","SO_MH.051218.000113","PPK35","8000","0","","80000","10");
INSERT INTO t_penjualan_detail VALUES("165","SO_MH.061218.000114","PK85","25000","0","","50000","2");
INSERT INTO t_penjualan_detail VALUES("166","SO_MH.061218.000114","PPB1KG","5000","0","","50000","10");
INSERT INTO t_penjualan_detail VALUES("167","SO_MH.061218.000114","PPK21","7000","0","","140000","20");
INSERT INTO t_penjualan_detail VALUES("168","SO_MH.061218.000114","PPK35","8000","0","","80000","10");
INSERT INTO t_penjualan_detail VALUES("169","SO_MH.061218.000115","PL1120","129000","0","","1290000","10");
INSERT INTO t_penjualan_detail VALUES("170","SO_MH.061218.000116","KPE608028","30000","0","","450000","15");
INSERT INTO t_penjualan_detail VALUES("171","SO_MH.061218.000117","HHD21","10000","0","","500000","50");
INSERT INTO t_penjualan_detail VALUES("172","SO_MH.061218.000117","HHD28","14000","0","","700000","50");
INSERT INTO t_penjualan_detail VALUES("173","SO_MH.061218.000118","SB1012","24000","0","","1200000","50");
INSERT INTO t_penjualan_detail VALUES("174","SO_MH.071218.000119","KPE608028","1300","0","","195000","150");
INSERT INTO t_penjualan_detail VALUES("175","SO_MH.071218.000119","KPE8010","1600","0","","240000","150");
INSERT INTO t_penjualan_detail VALUES("176","SO_MH.071218.000119","SB1008","18000","0","","360000","20");
INSERT INTO t_penjualan_detail VALUES("177","SO_MH.071218.000120","PK85","25000","0","","50000","2");
INSERT INTO t_penjualan_detail VALUES("178","SO_MH.071218.000120","PPB1KG","40000","0","","400000","10");
INSERT INTO t_penjualan_detail VALUES("179","SO_MH.071218.000120","PPK21","14000","0","","280000","20");
INSERT INTO t_penjualan_detail VALUES("180","SO_MH.071218.000120","PPK35","19000","0","","190000","10");
INSERT INTO t_penjualan_detail VALUES("181","SO_MH.071218.000121","TH1001","8360","0","","16720000","2000");
INSERT INTO t_penjualan_detail VALUES("182","SO_MH.111218.000122","KPE4060","15400","0","","770000","50");
INSERT INTO t_penjualan_detail VALUES("183","SO_MH.121218.000123","LV0386","98918","24729.5","","1780524","24");
INSERT INTO t_penjualan_detail VALUES("184","SO_MH.121218.000124","4200000000-aks-00059","11182","0","","223640","20");
INSERT INTO t_penjualan_detail VALUES("185","SO_MH.121218.000124","4200000000-aks","18507","0","","185070","10");
INSERT INTO t_penjualan_detail VALUES("186","SO_MH.121218.000125","4200000000-aks","4305","0","","43050","10");
INSERT INTO t_penjualan_detail VALUES("187","SO_MH.121218.000126","PL03710","37440","0","","187200","5");
INSERT INTO t_penjualan_detail VALUES("188","SO_MH.121218.000126","PL1015","79840","0","","399200","5");
INSERT INTO t_penjualan_detail VALUES("189","SO_MH.131218.000127","SD001","10400","0","","520000","50");
INSERT INTO t_penjualan_detail VALUES("190","SO_MH.131218.000127","SBB01","12040","0","","602000","50");
INSERT INTO t_penjualan_detail VALUES("191","SO_MH.131218.000128","KWM03710","40000","0","","800000","20");
INSERT INTO t_penjualan_detail VALUES("192","SO_MH.151218.000129","PL03813","43000","0","","903000","21");
INSERT INTO t_penjualan_detail VALUES("193","SO_MH.171218.000130","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("194","SO_MH.171218.000131","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("195","SO_MH.191218.000132","PL03710","46854","0","","843372","18");
INSERT INTO t_penjualan_detail VALUES("196","SO_MH.191218.000132","PL03813","72307","0","","1446140","20");
INSERT INTO t_penjualan_detail VALUES("197","SO_MH.191218.000132","PL1015","89321","0","","446605","5");
INSERT INTO t_penjualan_detail VALUES("198","SO_MH.191218.000133","KPE608028","30000","0","","300000","10");
INSERT INTO t_penjualan_detail VALUES("199","SO_MH.191218.000133","HPE609025","28000","0","","140000","5");
INSERT INTO t_penjualan_detail VALUES("200","SO_MH.191218.000134","TH1001","7000","0","","1379000","197");
INSERT INTO t_penjualan_detail VALUES("201","SO_MH.191218.000135","TH1001","7000","0","","1288000","184");
INSERT INTO t_penjualan_detail VALUES("202","SO_MH.201218.000136","KPE8010","2200","0","","2200000","1000");
INSERT INTO t_penjualan_detail VALUES("203","SO_MH.211218.000138","PL03710","24250","0","","485000","20");
INSERT INTO t_penjualan_detail VALUES("204","SO_MH.261218.000139","KPE608028","30000","0","","300000","10");
INSERT INTO t_penjualan_detail VALUES("205","SO_MH.261218.000140","KWM03710","40000","0","","480000","12");
INSERT INTO t_penjualan_detail VALUES("206","SO_MH.271218.000141","TH1001","8000","0","","960000","120");
INSERT INTO t_penjualan_detail VALUES("207","SO_MH.271218.000142","SB1008","16000","0","","800000","50");
INSERT INTO t_penjualan_detail VALUES("208","SO_MH.271218.000142","KPE608028","1380","0","","2070000","1500");
INSERT INTO t_penjualan_detail VALUES("209","SO_MH.271218.000143","TH1001","8182","0","","981840","120");
INSERT INTO t_penjualan_detail VALUES("210","SO_MH.281218.000144","TH1001","8637","0","","10796250","1250");
INSERT INTO t_penjualan_detail VALUES("211","SO_MH.281218.000145","MN0223","112440","28110","","1011960","12");



DROP TABLE t_rekapkwitansi;

CREATE TABLE `t_rekapkwitansi` (
  `id_rekapkwitansi` varchar(255) NOT NULL DEFAULT '',
  `keterangan` text,
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_batal` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `keterangan_batal` text,
  PRIMARY KEY (`id_rekapkwitansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_rekapkwitansi_detail;

CREATE TABLE `t_rekapkwitansi_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_rekapkwitansi` varchar(255) DEFAULT NULL,
  `fk_kwitansi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_satuan;

CREATE TABLE `t_satuan` (
  `id_satuan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_satuan VALUES("PCS","PCS");
INSERT INTO t_satuan VALUES("PAX","PAX");
INSERT INTO t_satuan VALUES("SCH","SCH");
INSERT INTO t_satuan VALUES("ROLL","ROLL");
INSERT INTO t_satuan VALUES("CANISTER","CANISTER");



DROP TABLE t_status_so;

CREATE TABLE `t_status_so` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_penjualan` varchar(25) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('PROSES SO','PROSES DO','CETAK KWITANSI','LUNAS') DEFAULT 'PROSES SO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=latin1;

INSERT INTO t_status_so VALUES("1","SO_MH.300918.000001","2018-09-30 09:50:50","PROSES SO");
INSERT INTO t_status_so VALUES("2","SO_MH.300918.000001","2018-09-30 09:51:59","PROSES DO");
INSERT INTO t_status_so VALUES("3","SO_MH.300918.000001","2018-09-30 09:52:16","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("4","SO_MH.300918.000002","2018-09-30 10:00:51","PROSES SO");
INSERT INTO t_status_so VALUES("5","SO_MH.300918.000002","2018-09-30 10:05:15","PROSES DO");
INSERT INTO t_status_so VALUES("6","SO_MH.300918.000002","2018-09-30 10:05:40","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("7","SO_MH.300918.000003","2018-09-30 10:08:13","PROSES SO");
INSERT INTO t_status_so VALUES("8","SO_MH.300918.000003","2018-09-30 10:09:06","PROSES DO");
INSERT INTO t_status_so VALUES("9","SO_MH.300918.000003","2018-09-30 10:09:20","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("10","SO_MH.300918.000004","2018-09-30 10:20:30","PROSES SO");
INSERT INTO t_status_so VALUES("11","SO_MH.300918.000004","2018-09-30 10:21:44","PROSES DO");
INSERT INTO t_status_so VALUES("12","SO_MH.300918.000004","2018-09-30 10:21:57","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("13","SO_MH.300918.000005","2018-09-30 10:29:31","PROSES SO");
INSERT INTO t_status_so VALUES("14","SO_MH.300918.000005","2018-09-30 10:31:04","PROSES DO");
INSERT INTO t_status_so VALUES("15","SO_MH.300918.000005","2018-09-30 10:31:24","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("16","SO_MH.300918.000006","2018-09-30 10:35:17","PROSES SO");
INSERT INTO t_status_so VALUES("17","SO_MH.300918.000006","2018-09-30 10:36:00","PROSES DO");
INSERT INTO t_status_so VALUES("18","SO_MH.300918.000006","2018-09-30 10:36:10","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("19","SO_MH.300918.000007","2018-09-30 12:30:01","PROSES SO");
INSERT INTO t_status_so VALUES("20","SO_MH.300918.000007","2018-09-30 12:31:18","PROSES DO");
INSERT INTO t_status_so VALUES("21","SO_MH.300918.000007","2018-09-30 12:31:31","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("22","SO_MH.300918.000008","2018-09-30 12:39:37","PROSES SO");
INSERT INTO t_status_so VALUES("23","SO_MH.300918.000008","2018-09-30 12:41:10","PROSES DO");
INSERT INTO t_status_so VALUES("24","SO_MH.300918.000008","2018-09-30 12:41:21","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("25","SO_MH.300918.000009","2018-09-30 12:44:43","PROSES SO");
INSERT INTO t_status_so VALUES("26","SO_MH.300918.000009","2018-09-30 12:45:29","PROSES DO");
INSERT INTO t_status_so VALUES("27","SO_MH.300918.000009","2018-09-30 12:45:43","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("28","SO_MH.300918.000010","2018-09-30 12:58:33","PROSES SO");
INSERT INTO t_status_so VALUES("29","SO_MH.300918.000010","2018-09-30 12:59:36","PROSES DO");
INSERT INTO t_status_so VALUES("30","SO_MH.300918.000010","2018-09-30 12:59:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("31","SO_MH.300918.000011","2018-09-30 13:05:46","PROSES SO");
INSERT INTO t_status_so VALUES("32","SO_MH.300918.000012","2018-09-30 13:13:49","PROSES SO");
INSERT INTO t_status_so VALUES("33","SO_MH.300918.000012","2018-09-30 13:14:42","PROSES DO");
INSERT INTO t_status_so VALUES("34","SO_MH.300918.000012","2018-09-30 13:14:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("35","SO_MH.300918.000013","2018-09-30 13:17:23","PROSES SO");
INSERT INTO t_status_so VALUES("36","SO_MH.300918.000013","2018-09-30 13:18:28","PROSES DO");
INSERT INTO t_status_so VALUES("37","SO_MH.300918.000013","2018-09-30 13:18:38","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("38","SO_MH.300918.000014","2018-09-30 13:22:39","PROSES SO");
INSERT INTO t_status_so VALUES("39","SO_MH.300918.000014","2018-09-30 13:23:37","PROSES DO");
INSERT INTO t_status_so VALUES("40","SO_MH.300918.000014","2018-09-30 13:23:49","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("41","SO_MH.300918.000015","2018-09-30 13:29:40","PROSES SO");
INSERT INTO t_status_so VALUES("42","SO_MH.300918.000015","2018-09-30 13:30:24","PROSES DO");
INSERT INTO t_status_so VALUES("43","SO_MH.300918.000015","2018-09-30 13:30:37","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("44","SO_MH.011018.000016","2018-10-01 15:42:13","PROSES SO");
INSERT INTO t_status_so VALUES("45","SO_MH.011018.000016","2018-10-01 15:42:53","PROSES DO");
INSERT INTO t_status_so VALUES("46","SO_MH.011018.000016","2018-10-01 15:43:06","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("47","SO_MH.011018.000017","2018-10-01 15:55:28","PROSES SO");
INSERT INTO t_status_so VALUES("48","SO_MH.011018.000017","2018-10-01 15:57:39","PROSES DO");
INSERT INTO t_status_so VALUES("49","SO_MH.011018.000017","2018-10-01 15:57:50","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("50","SO_MH.011018.000018","2018-10-01 19:26:48","PROSES SO");
INSERT INTO t_status_so VALUES("51","SO_MH.011018.000018","2018-10-01 19:55:41","PROSES DO");
INSERT INTO t_status_so VALUES("52","SO_MH.011018.000018","2018-10-01 19:55:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("53","SO_MH.011018.000019","2018-10-01 20:09:29","PROSES SO");
INSERT INTO t_status_so VALUES("54","SO_MH.011018.000019","2018-10-01 20:10:08","PROSES DO");
INSERT INTO t_status_so VALUES("55","SO_MH.011018.000019","2018-10-01 20:10:20","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("56","SO_MH.011018.000020","2018-10-01 20:12:19","PROSES SO");
INSERT INTO t_status_so VALUES("57","SO_MH.011018.000020","2018-10-01 20:13:04","PROSES DO");
INSERT INTO t_status_so VALUES("58","SO_MH.011018.000020","2018-10-01 20:13:15","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("59","SO_MH.011018.000021","2018-10-01 20:22:14","PROSES SO");
INSERT INTO t_status_so VALUES("60","SO_MH.011018.000021","2018-10-01 20:23:38","PROSES DO");
INSERT INTO t_status_so VALUES("61","SO_MH.011018.000022","2018-10-01 20:25:56","PROSES SO");
INSERT INTO t_status_so VALUES("62","SO_MH.011018.000022","2018-10-01 20:27:19","PROSES DO");
INSERT INTO t_status_so VALUES("63","SO_MH.011018.000023","2018-10-01 20:52:59","PROSES SO");
INSERT INTO t_status_so VALUES("64","SO_MH.011018.000023","2018-10-01 21:02:50","PROSES DO");
INSERT INTO t_status_so VALUES("65","SO_MH.011018.000024","2018-10-01 21:03:22","PROSES SO");
INSERT INTO t_status_so VALUES("66","SO_MH.011018.000024","2018-10-01 21:04:24","PROSES DO");
INSERT INTO t_status_so VALUES("67","SO_MH.011018.000025","2018-10-01 21:06:38","PROSES SO");
INSERT INTO t_status_so VALUES("68","SO_MH.011018.000025","2018-10-01 21:07:43","PROSES DO");
INSERT INTO t_status_so VALUES("69","SO_MH.011018.000026","2018-10-01 21:10:43","PROSES SO");
INSERT INTO t_status_so VALUES("70","SO_MH.011018.000026","2018-10-01 21:11:28","PROSES DO");
INSERT INTO t_status_so VALUES("71","SO_MH.011018.000027","2018-10-01 21:13:25","PROSES SO");
INSERT INTO t_status_so VALUES("72","SO_MH.011018.000027","2018-10-01 21:14:08","PROSES DO");
INSERT INTO t_status_so VALUES("73","SO_MH.011018.000028","2018-10-01 21:20:46","PROSES SO");
INSERT INTO t_status_so VALUES("74","SO_MH.011018.000028","2018-10-01 21:21:51","PROSES DO");
INSERT INTO t_status_so VALUES("75","SO_MH.011018.000029","2018-10-01 21:23:41","PROSES SO");
INSERT INTO t_status_so VALUES("76","SO_MH.011018.000029","2018-10-01 21:24:35","PROSES DO");
INSERT INTO t_status_so VALUES("77","SO_MH.011018.000030","2018-10-01 21:28:56","PROSES SO");
INSERT INTO t_status_so VALUES("78","SO_MH.011018.000030","2018-10-01 21:29:47","PROSES DO");
INSERT INTO t_status_so VALUES("79","SO_MH.011018.000031","2018-10-01 21:39:17","PROSES SO");
INSERT INTO t_status_so VALUES("80","SO_MH.011018.000031","2018-10-01 21:43:56","PROSES DO");
INSERT INTO t_status_so VALUES("81","SO_MH.011018.000032","2018-10-01 21:45:03","PROSES SO");
INSERT INTO t_status_so VALUES("82","SO_MH.011018.000032","2018-10-01 21:45:50","PROSES DO");
INSERT INTO t_status_so VALUES("83","SO_MH.011018.000033","2018-10-01 21:47:28","PROSES SO");
INSERT INTO t_status_so VALUES("84","SO_MH.011018.000033","2018-10-01 21:48:03","PROSES DO");
INSERT INTO t_status_so VALUES("85","SO_MH.011018.000034","2018-10-01 21:50:33","PROSES SO");
INSERT INTO t_status_so VALUES("86","SO_MH.011018.000034","2018-10-01 21:51:14","PROSES DO");
INSERT INTO t_status_so VALUES("87","SO_MH.011018.000035","2018-10-01 21:55:03","PROSES SO");
INSERT INTO t_status_so VALUES("88","SO_MH.011018.000035","2018-10-01 21:55:40","PROSES DO");
INSERT INTO t_status_so VALUES("89","SO_MH.011018.000021","2018-10-02 08:32:30","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("90","SO_MH.011018.000022","2018-10-02 08:32:45","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("91","SO_MH.011018.000024","2018-10-02 08:33:01","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("92","SO_MH.011018.000025","2018-10-02 08:33:22","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("93","SO_MH.011018.000026","2018-10-02 08:33:44","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("94","SO_MH.011018.000027","2018-10-02 08:33:58","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("95","SO_MH.011018.000028","2018-10-02 08:34:15","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("96","SO_MH.011018.000029","2018-10-02 08:34:31","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("97","SO_MH.011018.000030","2018-10-02 08:34:54","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("98","SO_MH.011018.000031","2018-10-02 08:35:39","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("99","SO_MH.011018.000032","2018-10-02 08:35:56","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("100","SO_MH.011018.000033","2018-10-02 08:36:56","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("101","SO_MH.011018.000034","2018-10-02 08:37:23","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("102","SO_MH.011018.000035","2018-10-02 08:37:37","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("103","SO_MH.021018.000036","2018-10-02 09:38:23","PROSES SO");
INSERT INTO t_status_so VALUES("104","SO_MH.021018.000036","2018-10-02 09:39:49","PROSES DO");
INSERT INTO t_status_so VALUES("105","SO_MH.021018.000036","2018-10-02 09:40:09","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("106","SO_MH.021018.000037","2018-10-02 09:44:58","PROSES SO");
INSERT INTO t_status_so VALUES("107","SO_MH.021018.000037","2018-10-02 09:45:49","PROSES DO");
INSERT INTO t_status_so VALUES("108","SO_MH.021018.000037","2018-10-02 09:46:27","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("109","SO_MH.021018.000036","2018-10-02 09:48:21","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("110","SO_MH.021018.000038","2018-10-02 09:50:16","PROSES SO");
INSERT INTO t_status_so VALUES("111","SO_MH.021018.000038","2018-10-02 09:51:16","PROSES DO");
INSERT INTO t_status_so VALUES("112","SO_MH.021018.000038","2018-10-02 09:51:32","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("113","SO_MH.021018.000039","2018-10-02 13:29:52","PROSES SO");
INSERT INTO t_status_so VALUES("114","SO_MH.021018.000039","2018-10-02 13:32:10","PROSES DO");
INSERT INTO t_status_so VALUES("115","SO_MH.021018.000039","2018-10-02 13:32:29","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("116","SO_MH.031018.000040","2018-10-03 09:36:51","PROSES SO");
INSERT INTO t_status_so VALUES("117","SO_MH.031018.000040","2018-10-03 09:39:26","PROSES DO");
INSERT INTO t_status_so VALUES("118","SO_MH.031018.000040","2018-10-03 09:39:56","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("119","SO_MH.021018.000039","2018-10-03 09:42:18","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("120","SO_MH.081018.000041","2018-10-08 09:13:48","PROSES SO");
INSERT INTO t_status_so VALUES("121","SO_MH.081018.000041","2018-10-10 08:37:00","PROSES DO");
INSERT INTO t_status_so VALUES("122","SO_MH.081018.000041","2018-10-10 08:37:26","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("123","SO_MH.101018.000042","2018-10-10 11:10:01","PROSES SO");
INSERT INTO t_status_so VALUES("124","SO_MH.101018.000042","2018-10-10 11:11:53","PROSES DO");
INSERT INTO t_status_so VALUES("125","SO_MH.101018.000042","2018-10-10 11:12:17","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("126","SO_MH.111018.000043","2018-10-11 10:13:02","PROSES SO");
INSERT INTO t_status_so VALUES("127","SO_MH.111018.000044","2018-10-11 10:20:23","PROSES SO");
INSERT INTO t_status_so VALUES("128","SO_MH.111018.000045","2018-10-11 10:30:23","PROSES SO");
INSERT INTO t_status_so VALUES("129","SO_MH.111018.000046","2018-10-11 10:33:32","PROSES SO");
INSERT INTO t_status_so VALUES("130","SO_MH.111018.000047","2018-10-11 11:08:29","PROSES SO");
INSERT INTO t_status_so VALUES("131","SO_MH.111018.000048","2018-10-11 11:48:55","PROSES SO");
INSERT INTO t_status_so VALUES("132","SO_MH.111018.000049","2018-10-11 11:58:26","PROSES SO");
INSERT INTO t_status_so VALUES("133","SO_MH.111018.000050","2018-10-11 12:11:37","PROSES SO");
INSERT INTO t_status_so VALUES("134","SO_MH.111018.000051","2018-10-11 12:15:06","PROSES SO");
INSERT INTO t_status_so VALUES("135","SO_MH.111018.000052","2018-10-11 12:42:06","PROSES SO");
INSERT INTO t_status_so VALUES("136","SO_MH.111018.000053","2018-10-11 12:49:14","PROSES SO");
INSERT INTO t_status_so VALUES("137","SO_MH.171018.000054","2018-10-17 09:05:20","PROSES SO");
INSERT INTO t_status_so VALUES("138","SO_MH.171018.000054","2018-10-17 09:06:19","PROSES DO");
INSERT INTO t_status_so VALUES("139","SO_MH.171018.000054","2018-10-17 09:06:49","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("140","SO_MH.171018.000055","2018-10-17 09:12:03","PROSES SO");
INSERT INTO t_status_so VALUES("141","SO_MH.171018.000055","2018-10-17 09:15:56","PROSES DO");
INSERT INTO t_status_so VALUES("142","SO_MH.171018.000055","2018-10-17 09:16:13","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("143","SO_MH.171018.000056","2018-10-17 09:28:56","PROSES SO");
INSERT INTO t_status_so VALUES("144","SO_MH.171018.000056","2018-10-17 09:29:47","PROSES DO");
INSERT INTO t_status_so VALUES("145","SO_MH.171018.000056","2018-10-17 09:29:59","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("146","SO_MH.171018.000057","2018-10-17 11:01:41","PROSES SO");
INSERT INTO t_status_so VALUES("147","SO_MH.171018.000057","2018-10-17 11:03:22","PROSES DO");
INSERT INTO t_status_so VALUES("148","SO_MH.171018.000057","2018-10-17 11:03:38","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("149","SO_MH.031018.000040","2018-10-17 11:03:55","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("150","SO_MH.171018.000058","2018-10-17 11:39:35","PROSES SO");
INSERT INTO t_status_so VALUES("151","SO_MH.171018.000058","2018-10-17 12:01:19","PROSES DO");
INSERT INTO t_status_so VALUES("152","SO_MH.171018.000058","2018-10-17 12:02:20","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("153","SO_MH.171018.000059","2018-10-17 16:05:00","PROSES SO");
INSERT INTO t_status_so VALUES("154","SO_MH.171018.000059","2018-10-17 16:19:08","PROSES DO");
INSERT INTO t_status_so VALUES("155","SO_MH.171018.000059","2018-10-17 16:19:20","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("156","SO_MH.191018.000060","2018-10-19 09:23:11","PROSES SO");
INSERT INTO t_status_so VALUES("157","SO_MH.191018.000060","2018-10-19 09:24:55","PROSES DO");
INSERT INTO t_status_so VALUES("158","SO_MH.191018.000060","2018-10-19 09:25:11","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("159","SO_MH.191018.000061","2018-10-19 09:55:31","PROSES SO");
INSERT INTO t_status_so VALUES("160","SO_MH.191018.000061","2018-10-19 09:56:29","PROSES DO");
INSERT INTO t_status_so VALUES("161","SO_MH.191018.000061","2018-10-19 09:56:51","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("162","SO_MH.201018.000062","2018-10-20 09:29:17","PROSES SO");
INSERT INTO t_status_so VALUES("163","SO_MH.201018.000062","2018-10-20 09:30:37","PROSES DO");
INSERT INTO t_status_so VALUES("164","SO_MH.201018.000062","2018-10-20 09:30:54","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("165","SO_MH.111018.000051","2018-10-20 09:31:25","PROSES DO");
INSERT INTO t_status_so VALUES("166","SO_MH.111018.000051","2018-10-20 09:31:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("167","SO_MH.221018.000063","2018-10-22 10:19:01","PROSES SO");
INSERT INTO t_status_so VALUES("168","SO_MH.111018.000044","2018-10-22 10:20:40","PROSES DO");
INSERT INTO t_status_so VALUES("169","SO_MH.111018.000044","2018-10-22 10:21:06","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("170","SO_MH.221018.000063","2018-10-22 10:21:19","PROSES DO");
INSERT INTO t_status_so VALUES("171","SO_MH.101018.000042","2018-10-22 10:21:34","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("172","SO_MH.101018.000042","2018-10-22 10:21:34","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("173","SO_MH.221018.000063","2018-10-22 10:21:47","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("174","SO_MH.221018.000064","2018-10-22 10:23:54","PROSES SO");
INSERT INTO t_status_so VALUES("175","SO_MH.221018.000065","2018-10-22 10:38:30","PROSES SO");
INSERT INTO t_status_so VALUES("176","SO_MH.231018.000066","2018-10-23 09:12:00","PROSES SO");
INSERT INTO t_status_so VALUES("177","SO_MH.231018.000066","2018-10-23 09:12:59","PROSES DO");
INSERT INTO t_status_so VALUES("178","SO_MH.231018.000066","2018-10-23 09:13:21","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("179","SO_MH.111018.000043","2018-10-23 09:18:15","PROSES DO");
INSERT INTO t_status_so VALUES("180","SO_MH.111018.000043","2018-10-23 09:18:32","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("181","SO_MH.111018.000048","2018-10-23 09:25:25","PROSES DO");
INSERT INTO t_status_so VALUES("182","SO_MH.111018.000048","2018-10-23 09:27:35","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("183","SO_MH.111018.000049","2018-10-23 09:28:16","PROSES DO");
INSERT INTO t_status_so VALUES("184","SO_MH.111018.000049","2018-10-23 09:28:36","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("185","SO_MH.231018.000067","2018-10-23 09:54:19","PROSES SO");
INSERT INTO t_status_so VALUES("186","SO_MH.231018.000067","2018-10-23 09:55:11","PROSES DO");
INSERT INTO t_status_so VALUES("187","SO_MH.231018.000067","2018-10-23 09:55:42","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("188","SO_MH.261018.000068","2018-10-26 09:41:46","PROSES SO");
INSERT INTO t_status_so VALUES("189","SO_MH.261018.000068","2018-10-26 09:44:52","PROSES DO");
INSERT INTO t_status_so VALUES("190","SO_MH.261018.000068","2018-10-26 09:45:13","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("191","SO_MH.301018.000069","2018-10-30 09:08:07","PROSES SO");
INSERT INTO t_status_so VALUES("192","SO_MH.301018.000069","2018-10-30 09:09:19","PROSES DO");
INSERT INTO t_status_so VALUES("193","SO_MH.301018.000069","2018-10-30 09:10:38","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("194","SO_MH.301018.000070","2018-10-30 10:13:13","PROSES SO");
INSERT INTO t_status_so VALUES("195","SO_MH.301018.000070","2018-10-30 10:14:12","PROSES DO");
INSERT INTO t_status_so VALUES("196","SO_MH.301018.000070","2018-10-30 10:14:30","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("197","SO_MH.301018.000071","2018-10-30 13:01:36","PROSES SO");
INSERT INTO t_status_so VALUES("198","SO_MH.301018.000071","2018-10-30 13:04:27","PROSES DO");
INSERT INTO t_status_so VALUES("199","SO_MH.301018.000071","2018-10-30 13:05:07","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("200","SO_MH.311018.000072","2018-10-31 08:48:05","PROSES SO");
INSERT INTO t_status_so VALUES("201","SO_MH.311018.000072","2018-10-31 08:49:27","PROSES DO");
INSERT INTO t_status_so VALUES("202","SO_MH.311018.000072","2018-10-31 08:49:46","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("203","SO_MH.311018.000073","2018-10-31 09:31:24","PROSES SO");
INSERT INTO t_status_so VALUES("204","SO_MH.311018.000073","2018-10-31 09:32:43","PROSES DO");
INSERT INTO t_status_so VALUES("205","SO_MH.311018.000073","2018-10-31 09:33:07","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("206","SO_MH.311018.000074","2018-10-31 09:52:16","PROSES SO");
INSERT INTO t_status_so VALUES("207","SO_MH.311018.000075","2018-10-31 09:52:16","PROSES SO");
INSERT INTO t_status_so VALUES("208","SO_MH.311018.000074","2018-10-31 09:54:26","PROSES DO");
INSERT INTO t_status_so VALUES("209","SO_MH.311018.000074","2018-10-31 09:54:46","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("210","SO_MH.011118.000075","2018-11-01 10:45:14","PROSES SO");
INSERT INTO t_status_so VALUES("211","SO_MH.011118.000075","2018-11-01 10:46:12","PROSES DO");
INSERT INTO t_status_so VALUES("212","SO_MH.011118.000075","2018-11-01 10:46:26","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("213","SO_MH.011118.000076","2018-11-01 10:47:16","PROSES SO");
INSERT INTO t_status_so VALUES("214","SO_MH.011118.000076","2018-11-01 10:48:29","PROSES DO");
INSERT INTO t_status_so VALUES("215","SO_MH.011118.000076","2018-11-01 10:48:46","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("216","SO_MH.021118.000077","2018-11-02 08:16:27","PROSES SO");
INSERT INTO t_status_so VALUES("217","SO_MH.021118.000077","2018-11-02 08:19:04","PROSES DO");
INSERT INTO t_status_so VALUES("218","SO_MH.021118.000077","2018-11-02 08:20:01","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("219","SO_MH.051118.000078","2018-11-05 11:04:48","PROSES SO");
INSERT INTO t_status_so VALUES("220","SO_MH.051118.000078","2018-11-05 11:05:51","PROSES DO");
INSERT INTO t_status_so VALUES("221","SO_MH.051118.000078","2018-11-05 11:06:12","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("222","SO_MH.061118.000079","2018-11-06 09:07:02","PROSES SO");
INSERT INTO t_status_so VALUES("223","SO_MH.061118.000079","2018-11-06 09:08:47","PROSES DO");
INSERT INTO t_status_so VALUES("224","SO_MH.061118.000079","2018-11-06 09:09:24","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("225","SO_MH.061118.000080","2018-11-06 09:19:55","PROSES SO");
INSERT INTO t_status_so VALUES("226","SO_MH.061118.000080","2018-11-06 09:21:58","PROSES DO");
INSERT INTO t_status_so VALUES("227","SO_MH.061118.000080","2018-11-06 09:22:12","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("228","SO_MH.121118.000081","2018-11-12 09:14:48","PROSES SO");
INSERT INTO t_status_so VALUES("229","SO_MH.121118.000081","2018-11-12 09:16:09","PROSES DO");
INSERT INTO t_status_so VALUES("230","SO_MH.121118.000081","2018-11-12 09:16:27","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("231","SO_MH.121118.000082","2018-11-12 10:50:29","PROSES SO");
INSERT INTO t_status_so VALUES("232","SO_MH.121118.000082","2018-11-12 10:51:47","PROSES DO");
INSERT INTO t_status_so VALUES("233","SO_MH.121118.000082","2018-11-12 10:52:05","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("234","SO_MH.131118.000083","2018-11-13 08:50:26","PROSES SO");
INSERT INTO t_status_so VALUES("235","SO_MH.131118.000083","2018-11-13 08:52:08","PROSES DO");
INSERT INTO t_status_so VALUES("236","SO_MH.131118.000083","2018-11-13 08:52:25","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("237","SO_MH.131118.000084","2018-11-13 08:54:13","PROSES SO");
INSERT INTO t_status_so VALUES("238","SO_MH.131118.000084","2018-11-13 08:55:03","PROSES DO");
INSERT INTO t_status_so VALUES("239","SO_MH.131118.000084","2018-11-13 08:55:19","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("240","SO_MH.141118.000085","2018-11-14 10:18:18","PROSES SO");
INSERT INTO t_status_so VALUES("241","SO_MH.141118.000085","2018-11-14 10:21:09","PROSES DO");
INSERT INTO t_status_so VALUES("242","SO_MH.141118.000085","2018-11-14 10:21:31","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("243","SO_MH.141118.000086","2018-11-14 11:14:07","PROSES SO");
INSERT INTO t_status_so VALUES("244","SO_MH.141118.000086","2018-11-14 11:32:26","PROSES DO");
INSERT INTO t_status_so VALUES("245","SO_MH.141118.000086","2018-11-14 11:32:40","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("246","SO_MH.151118.000087","2018-11-15 09:39:27","PROSES SO");
INSERT INTO t_status_so VALUES("247","SO_MH.151118.000087","2018-11-15 09:40:40","PROSES DO");
INSERT INTO t_status_so VALUES("248","SO_MH.151118.000087","2018-11-15 09:41:21","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("249","SO_MH.151118.000088","2018-11-15 10:36:48","PROSES SO");
INSERT INTO t_status_so VALUES("250","SO_MH.151118.000088","2018-11-15 10:37:59","PROSES DO");
INSERT INTO t_status_so VALUES("251","SO_MH.151118.000088","2018-11-15 10:38:15","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("252","SO_MH.171118.000089","2018-11-17 08:30:58","PROSES SO");
INSERT INTO t_status_so VALUES("253","SO_MH.171118.000089","2018-11-17 08:33:08","PROSES DO");
INSERT INTO t_status_so VALUES("254","SO_MH.171118.000089","2018-11-17 08:33:28","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("255","SO_MH.171118.000090","2018-11-17 08:39:26","PROSES SO");
INSERT INTO t_status_so VALUES("256","SO_MH.171118.000090","2018-11-17 08:40:24","PROSES DO");
INSERT INTO t_status_so VALUES("257","SO_MH.171118.000090","2018-11-17 08:40:38","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("258","SO_MH.171118.000091","2018-11-17 08:51:19","PROSES SO");
INSERT INTO t_status_so VALUES("259","SO_MH.171118.000091","2018-11-17 08:58:34","PROSES DO");
INSERT INTO t_status_so VALUES("260","SO_MH.171118.000091","2018-11-17 08:58:48","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("261","SO_MH.171118.000092","2018-11-17 08:59:16","PROSES SO");
INSERT INTO t_status_so VALUES("262","SO_MH.171118.000092","2018-11-17 09:00:32","PROSES DO");
INSERT INTO t_status_so VALUES("263","SO_MH.171118.000092","2018-11-17 09:00:52","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("264","SO_MH.191118.000093","2018-11-19 09:00:14","PROSES SO");
INSERT INTO t_status_so VALUES("265","SO_MH.191118.000093","2018-11-19 09:03:03","PROSES DO");
INSERT INTO t_status_so VALUES("266","SO_MH.191118.000093","2018-11-19 09:03:46","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("267","SO_MH.211118.000094","2018-11-21 09:56:17","PROSES SO");
INSERT INTO t_status_so VALUES("268","SO_MH.211118.000094","2018-11-21 09:57:19","PROSES DO");
INSERT INTO t_status_so VALUES("269","SO_MH.211118.000094","2018-11-21 09:57:39","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("270","SO_MH.231118.000095","2018-11-23 09:00:18","PROSES SO");
INSERT INTO t_status_so VALUES("271","SO_MH.231118.000095","2018-11-23 09:01:16","PROSES DO");
INSERT INTO t_status_so VALUES("272","SO_MH.231118.000095","2018-11-23 09:01:42","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("273","SO_MH.231118.000096","2018-11-23 09:02:41","PROSES SO");
INSERT INTO t_status_so VALUES("274","SO_MH.231118.000096","2018-11-23 09:03:25","PROSES DO");
INSERT INTO t_status_so VALUES("275","SO_MH.231118.000096","2018-11-23 09:03:39","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("276","SO_MH.231118.000097","2018-11-23 09:18:33","PROSES SO");
INSERT INTO t_status_so VALUES("277","SO_MH.231118.000097","2018-11-23 09:22:04","PROSES DO");
INSERT INTO t_status_so VALUES("278","SO_MH.231118.000097","2018-11-23 09:22:17","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("279","SO_MH.261118.000098","2018-11-26 09:34:22","PROSES SO");
INSERT INTO t_status_so VALUES("280","SO_MH.261118.000098","2018-11-26 09:36:22","PROSES DO");
INSERT INTO t_status_so VALUES("281","SO_MH.261118.000098","2018-11-26 09:36:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("282","SO_MH.261118.000099","2018-11-26 09:43:26","PROSES SO");
INSERT INTO t_status_so VALUES("283","SO_MH.271118.000100","2018-11-27 10:35:21","PROSES SO");
INSERT INTO t_status_so VALUES("284","SO_MH.271118.000100","2018-11-27 10:36:08","PROSES DO");
INSERT INTO t_status_so VALUES("285","SO_MH.271118.000100","2018-11-27 10:36:26","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("286","SO_MH.271118.000101","2018-11-27 10:37:51","PROSES SO");
INSERT INTO t_status_so VALUES("287","SO_MH.271118.000101","2018-11-27 10:39:01","PROSES DO");
INSERT INTO t_status_so VALUES("288","SO_MH.271118.000101","2018-11-27 10:39:14","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("289","SO_MH.271118.000102","2018-11-27 10:56:12","PROSES SO");
INSERT INTO t_status_so VALUES("290","SO_MH.271118.000102","2018-11-27 11:08:33","PROSES DO");
INSERT INTO t_status_so VALUES("291","SO_MH.271118.000102","2018-11-27 11:09:09","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("292","SO_MH.271118.000103","2018-11-27 13:30:08","PROSES SO");
INSERT INTO t_status_so VALUES("293","SO_MH.271118.000103","2018-11-27 13:33:13","PROSES DO");
INSERT INTO t_status_so VALUES("294","SO_MH.271118.000103","2018-11-27 13:33:47","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("295","SO_MH.271118.000104","2018-11-27 13:49:20","PROSES SO");
INSERT INTO t_status_so VALUES("296","SO_MH.271118.000104","2018-11-27 14:08:19","PROSES DO");
INSERT INTO t_status_so VALUES("297","SO_MH.271118.000104","2018-11-27 14:08:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("298","SO_MH.281118.000105","2018-11-28 09:17:30","PROSES SO");
INSERT INTO t_status_so VALUES("299","SO_MH.281118.000105","2018-11-28 09:18:27","PROSES DO");
INSERT INTO t_status_so VALUES("300","SO_MH.281118.000105","2018-11-28 09:18:44","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("301","SO_MH.281118.000106","2018-11-28 09:23:01","PROSES SO");
INSERT INTO t_status_so VALUES("302","SO_MH.281118.000106","2018-11-28 09:23:45","PROSES DO");
INSERT INTO t_status_so VALUES("303","SO_MH.281118.000106","2018-11-28 09:24:48","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("304","SO_MH.011218.000107","2018-12-01 08:54:34","PROSES SO");
INSERT INTO t_status_so VALUES("305","SO_MH.011218.000107","2018-12-01 09:58:24","PROSES DO");
INSERT INTO t_status_so VALUES("306","SO_MH.011218.000107","2018-12-01 09:59:00","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("307","SO_MH.041218.000108","2018-12-04 08:52:52","PROSES SO");
INSERT INTO t_status_so VALUES("308","SO_MH.041218.000108","2018-12-04 08:53:55","PROSES DO");
INSERT INTO t_status_so VALUES("309","SO_MH.041218.000108","2018-12-04 08:54:12","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("310","SO_MH.041218.000109","2018-12-04 10:34:28","PROSES SO");
INSERT INTO t_status_so VALUES("311","SO_MH.041218.000109","2018-12-04 10:35:21","PROSES DO");
INSERT INTO t_status_so VALUES("312","SO_MH.041218.000109","2018-12-04 10:35:39","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("313","SO_MH.041218.000110","2018-12-04 10:41:32","PROSES SO");
INSERT INTO t_status_so VALUES("314","SO_MH.041218.000110","2018-12-04 10:42:22","PROSES DO");
INSERT INTO t_status_so VALUES("315","SO_MH.041218.000110","2018-12-04 10:42:35","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("316","SO_MH.041218.000111","2018-12-04 10:51:14","PROSES SO");
INSERT INTO t_status_so VALUES("317","SO_MH.041218.000111","2018-12-04 10:51:57","PROSES DO");
INSERT INTO t_status_so VALUES("318","SO_MH.041218.000111","2018-12-04 10:52:09","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("319","SO_MH.051218.000112","2018-12-05 15:55:06","PROSES SO");
INSERT INTO t_status_so VALUES("320","SO_MH.051218.000112","2018-12-05 15:56:49","PROSES DO");
INSERT INTO t_status_so VALUES("321","SO_MH.051218.000112","2018-12-05 15:57:28","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("322","SO_MH.051218.000113","2018-12-05 16:18:57","PROSES SO");
INSERT INTO t_status_so VALUES("323","SO_MH.051218.000113","2018-12-05 16:22:37","PROSES DO");
INSERT INTO t_status_so VALUES("324","SO_MH.051218.000113","2018-12-05 16:22:55","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("325","SO_MH.061218.000114","2018-12-06 08:45:26","PROSES SO");
INSERT INTO t_status_so VALUES("326","SO_MH.061218.000114","2018-12-06 08:49:59","PROSES DO");
INSERT INTO t_status_so VALUES("327","SO_MH.061218.000114","2018-12-06 08:50:13","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("328","SO_MH.061218.000115","2018-12-06 08:57:15","PROSES SO");
INSERT INTO t_status_so VALUES("329","SO_MH.061218.000115","2018-12-06 08:58:24","PROSES DO");
INSERT INTO t_status_so VALUES("330","SO_MH.061218.000115","2018-12-06 08:58:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("331","SO_MH.061218.000116","2018-12-06 09:01:19","PROSES SO");
INSERT INTO t_status_so VALUES("332","SO_MH.061218.000116","2018-12-06 09:02:42","PROSES DO");
INSERT INTO t_status_so VALUES("333","SO_MH.061218.000116","2018-12-06 09:03:00","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("334","SO_MH.061218.000117","2018-12-06 13:36:42","PROSES SO");
INSERT INTO t_status_so VALUES("335","SO_MH.061218.000117","2018-12-06 13:38:00","PROSES DO");
INSERT INTO t_status_so VALUES("336","SO_MH.061218.000117","2018-12-06 13:38:16","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("337","SO_MH.061218.000118","2018-12-06 15:32:24","PROSES SO");
INSERT INTO t_status_so VALUES("338","SO_MH.061218.000118","2018-12-06 15:34:31","PROSES DO");
INSERT INTO t_status_so VALUES("339","SO_MH.061218.000118","2018-12-06 15:34:46","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("340","SO_MH.071218.000119","2018-12-07 08:34:34","PROSES SO");
INSERT INTO t_status_so VALUES("341","SO_MH.071218.000119","2018-12-07 08:45:13","PROSES DO");
INSERT INTO t_status_so VALUES("342","SO_MH.071218.000119","2018-12-07 08:45:26","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("343","SO_MH.071218.000120","2018-12-07 11:45:27","PROSES SO");
INSERT INTO t_status_so VALUES("344","SO_MH.071218.000120","2018-12-07 11:49:20","PROSES DO");
INSERT INTO t_status_so VALUES("345","SO_MH.071218.000120","2018-12-07 11:49:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("346","SO_MH.071218.000121","2018-12-07 16:05:06","PROSES SO");
INSERT INTO t_status_so VALUES("347","SO_MH.071218.000121","2018-12-07 16:05:45","PROSES DO");
INSERT INTO t_status_so VALUES("348","SO_MH.071218.000121","2018-12-07 16:05:58","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("349","SO_MH.191118.000093","2018-12-10 08:47:26","LUNAS");
INSERT INTO t_status_so VALUES("350","SO_MH.111218.000122","2018-12-11 08:58:39","PROSES SO");
INSERT INTO t_status_so VALUES("351","SO_MH.111218.000122","2018-12-11 08:59:52","PROSES DO");
INSERT INTO t_status_so VALUES("352","SO_MH.111218.000122","2018-12-11 09:00:19","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("353","SO_MH.121218.000123","2018-12-12 08:51:50","PROSES SO");
INSERT INTO t_status_so VALUES("354","SO_MH.121218.000123","2018-12-12 08:53:12","PROSES DO");
INSERT INTO t_status_so VALUES("355","SO_MH.121218.000123","2018-12-12 08:53:42","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("356","SO_MH.121218.000124","2018-12-12 09:23:15","PROSES SO");
INSERT INTO t_status_so VALUES("357","SO_MH.121218.000124","2018-12-12 09:45:32","PROSES DO");
INSERT INTO t_status_so VALUES("358","SO_MH.121218.000124","2018-12-12 09:45:49","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("359","SO_MH.121218.000125","2018-12-12 09:49:28","PROSES SO");
INSERT INTO t_status_so VALUES("360","SO_MH.121218.000126","2018-12-12 14:54:30","PROSES SO");
INSERT INTO t_status_so VALUES("361","SO_MH.121218.000126","2018-12-12 14:55:52","PROSES DO");
INSERT INTO t_status_so VALUES("362","SO_MH.121218.000126","2018-12-12 14:56:05","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("363","SO_MH.131218.000127","2018-12-13 10:07:48","PROSES SO");
INSERT INTO t_status_so VALUES("364","SO_MH.131218.000127","2018-12-13 10:09:05","PROSES DO");
INSERT INTO t_status_so VALUES("365","SO_MH.131218.000127","2018-12-13 10:09:21","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("366","SO_MH.131218.000128","2018-12-13 10:12:08","PROSES SO");
INSERT INTO t_status_so VALUES("367","SO_MH.131218.000128","2018-12-13 10:12:52","PROSES DO");
INSERT INTO t_status_so VALUES("368","SO_MH.131218.000128","2018-12-13 10:13:07","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("369","SO_MH.151218.000129","2018-12-15 09:37:13","PROSES SO");
INSERT INTO t_status_so VALUES("370","SO_MH.151218.000129","2018-12-15 09:38:25","PROSES DO");
INSERT INTO t_status_so VALUES("371","SO_MH.151218.000129","2018-12-15 09:38:41","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("372","SO_MH.171218.000130","2018-12-17 09:51:00","PROSES SO");
INSERT INTO t_status_so VALUES("373","SO_MH.171218.000130","2018-12-17 09:52:10","PROSES DO");
INSERT INTO t_status_so VALUES("374","SO_MH.171218.000130","2018-12-17 09:52:32","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("375","SO_MH.171218.000131","2018-12-17 09:53:51","PROSES SO");
INSERT INTO t_status_so VALUES("376","SO_MH.171218.000131","2018-12-17 09:54:47","PROSES DO");
INSERT INTO t_status_so VALUES("377","SO_MH.171218.000131","2018-12-17 09:55:00","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("378","SO_MH.191218.000132","2018-12-19 08:49:13","PROSES SO");
INSERT INTO t_status_so VALUES("379","SO_MH.191218.000132","2018-12-19 09:08:28","PROSES DO");
INSERT INTO t_status_so VALUES("380","SO_MH.191218.000132","2018-12-19 09:08:28","PROSES DO");
INSERT INTO t_status_so VALUES("381","SO_MH.191218.000132","2018-12-19 09:08:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("382","SO_MH.191218.000133","2018-12-19 09:14:07","PROSES SO");
INSERT INTO t_status_so VALUES("383","SO_MH.191218.000133","2018-12-19 09:15:15","PROSES DO");
INSERT INTO t_status_so VALUES("384","SO_MH.191218.000133","2018-12-19 09:15:33","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("385","SO_MH.191218.000134","2018-12-19 09:19:53","PROSES SO");
INSERT INTO t_status_so VALUES("386","SO_MH.191218.000134","2018-12-19 09:20:39","PROSES DO");
INSERT INTO t_status_so VALUES("387","SO_MH.191218.000134","2018-12-19 09:20:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("388","SO_MH.191218.000135","2018-12-19 14:56:01","PROSES SO");
INSERT INTO t_status_so VALUES("389","SO_MH.191218.000135","2018-12-19 15:02:50","PROSES DO");
INSERT INTO t_status_so VALUES("390","SO_MH.191218.000135","2018-12-19 15:03:13","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("391","SO_MH.201218.000136","2018-12-20 09:12:51","PROSES SO");
INSERT INTO t_status_so VALUES("392","SO_MH.201218.000137","2018-12-20 09:15:54","PROSES SO");
INSERT INTO t_status_so VALUES("393","SO_MH.201218.000136","2018-12-20 09:23:33","PROSES DO");
INSERT INTO t_status_so VALUES("394","SO_MH.201218.000136","2018-12-20 09:23:45","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("395","SO_MH.211218.000138","2018-12-21 08:55:01","PROSES SO");
INSERT INTO t_status_so VALUES("396","SO_MH.211218.000138","2018-12-21 08:56:57","PROSES DO");
INSERT INTO t_status_so VALUES("397","SO_MH.211218.000138","2018-12-21 08:57:16","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("398","SO_MH.261218.000139","2018-12-26 08:57:23","PROSES SO");
INSERT INTO t_status_so VALUES("399","SO_MH.261218.000139","2018-12-26 08:58:25","PROSES DO");
INSERT INTO t_status_so VALUES("400","SO_MH.261218.000139","2018-12-26 08:58:40","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("401","SO_MH.261218.000140","2018-12-26 09:59:50","PROSES SO");
INSERT INTO t_status_so VALUES("402","SO_MH.261218.000140","2018-12-26 10:01:21","PROSES DO");
INSERT INTO t_status_so VALUES("403","SO_MH.261218.000140","2018-12-26 10:01:37","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("404","SO_MH.271218.000141","2018-12-27 10:28:06","PROSES SO");
INSERT INTO t_status_so VALUES("405","SO_MH.271218.000141","2018-12-27 10:28:50","PROSES DO");
INSERT INTO t_status_so VALUES("406","SO_MH.271218.000142","2018-12-27 10:43:07","PROSES SO");
INSERT INTO t_status_so VALUES("407","SO_MH.271218.000142","2018-12-27 10:44:34","PROSES DO");
INSERT INTO t_status_so VALUES("408","SO_MH.271218.000141","2018-12-27 10:44:53","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("409","SO_MH.271218.000142","2018-12-27 10:45:19","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("410","SO_MH.271218.000143","2018-12-27 10:46:46","PROSES SO");
INSERT INTO t_status_so VALUES("411","SO_MH.271218.000143","2018-12-27 10:47:40","PROSES DO");
INSERT INTO t_status_so VALUES("412","SO_MH.271218.000143","2018-12-27 10:47:57","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("413","SO_MH.281218.000144","2018-12-28 09:43:58","PROSES SO");
INSERT INTO t_status_so VALUES("414","SO_MH.281218.000144","2018-12-28 09:46:03","PROSES DO");
INSERT INTO t_status_so VALUES("415","SO_MH.281218.000144","2018-12-28 09:46:19","CETAK KWITANSI");
INSERT INTO t_status_so VALUES("416","SO_MH.281218.000145","2018-12-28 15:14:49","PROSES SO");
INSERT INTO t_status_so VALUES("417","SO_MH.281218.000145","2018-12-28 15:17:33","PROSES DO");
INSERT INTO t_status_so VALUES("418","SO_MH.281218.000145","2018-12-28 15:19:00","CETAK KWITANSI");



DROP TABLE t_stok_akhir;

CREATE TABLE `t_stok_akhir` (
  `fk_barang` varchar(20) NOT NULL DEFAULT '',
  `tgl` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `masuk` int(11) DEFAULT NULL,
  `keluar` int(11) DEFAULT NULL,
  `hpp` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE t_supplier;

CREATE TABLE `t_supplier` (
  `id_supplier` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `npwp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_supplier VALUES("0001","PT. AYLA JAVA MANDIRA","","","");
INSERT INTO t_supplier VALUES("0002","TOKO 100","","","");
INSERT INTO t_supplier VALUES("0003","TOKO DAMAI","","","");
INSERT INTO t_supplier VALUES("0004","PT. CAHAYA KHARISMA PLASINDO","","","");
INSERT INTO t_supplier VALUES("0005","MH MEDIKA","","","");
INSERT INTO t_supplier VALUES("0006","CV. SEJAHTERA ABADI","","","");
INSERT INTO t_supplier VALUES("0007","Belva Medika","","","");
INSERT INTO t_supplier VALUES("0008","PT NUSA ASIA MEDIKA","","","");
INSERT INTO t_supplier VALUES("0009","PT SENTRA ASIA GEMILANG","","","");
INSERT INTO t_supplier VALUES("0010","PT. Swasta Makmur Sejahtera","","","");



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



