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
INSERT INTO t_barang VALUES("HHD4065KH","HD 40X65 KHARISMA","PCS","300023","368","735","0","10");
INSERT INTO t_barang VALUES("HHD4065L","HD 40X65 LORI","PCS","300023","358","715","0","10");
INSERT INTO t_barang VALUES("HHD8010023","HD 80X100X0.3","PCS","300023","1435","2870","0","10");
INSERT INTO t_barang VALUES("HPE4060","Plastik Kresek Hitam HD 40X60","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HPE6010023","PE 60X100X0.4","PCS","300023","975","1950","0","10");
INSERT INTO t_barang VALUES("HPE609025","PE 60X90X0.4","PCS","300023","895","1790","0","10");
INSERT INTO t_barang VALUES("HPE8010","Plastik Sampah Hitam 80x100","PCS","300023","0","0","0","0");
INSERT INTO t_barang VALUES("HPE901210","PE 90X120X0.5","PCS","300023","2008","4015","0","10");
INSERT INTO t_barang VALUES("KPE4060","Plastik Kresek Kuning 40x60","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE6010","PLASTIK SAMPAH KUNING 60x100","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE6070","PLASTIK KUNING 60x70","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE608028","PE 60X80X0.4","PCS","300024","870","1740","0","10");
INSERT INTO t_barang VALUES("KPE8010","PLASTIK SAMPAH KUNING 80x100","PCS","300024","0","0","0","0");
INSERT INTO t_barang VALUES("KPE8010017","PE 80X100X0.4","PCS","300024","1490","2980","0","10");
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
INSERT INTO t_barang VALUES("PC0611","Capro Mesh 6 cm x 11 cm","SCH","100020","373750","650000","0","0");
INSERT INTO t_barang VALUES("PC1015","Capro Mesh 10 cm x 15 cm","SCH","100020","600875","1045000","0","0");
INSERT INTO t_barang VALUES("PC1515","Capro Mesh 15 cm x 15 cm","SCH","100020","1063750","1850000","0","0");
INSERT INTO t_barang VALUES("PC3030","Capro Mesh 30 cm x 30 cm","SCH","100020","2271250","3950000","0","0");
INSERT INTO t_barang VALUES("PKP01001","PLASTIK KRESEK PUTIH KECIL","PCS","","0","0","0","0");
INSERT INTO t_barang VALUES("PL03610","Plastik Klip Obat 6x10","PCS","300030","22000","33478","0","0");
INSERT INTO t_barang VALUES("PL03710","Plastik Klip Obat 7x10","PAX","300030","24000","43600","0","0");
INSERT INTO t_barang VALUES("PL03813","Plastik Klip Obat 8,7x13","PAX","300030","34000","66952","0","0");
INSERT INTO t_barang VALUES("PL041220","Plastik Klip 12x20","PAX","300030","86118","172235","0","10");
INSERT INTO t_barang VALUES("PL041320","Plastik Klip 13x20","PAX","300030","93148","186295","0","10");
INSERT INTO t_barang VALUES("PL0611","Chiralen Mesh Light  6 cm x 11 cm PL 0611","SCH","100019","284050","494000","0","0");
INSERT INTO t_barang VALUES("PL1015","Plastik Klip Obat 10x15","PAX","300030","0","0","0","0");
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
INSERT INTO t_barang VALUES("PQ0212","Chirlac Rapid 4/0 75 cm DS-19","SCH","100011","55689","96850","0","0");
INSERT INTO t_barang VALUES("PQ0224","Chirlac Rapid 3/0 75 cm viol DS-25","SCH","100011","55689","96850","0","0");
INSERT INTO t_barang VALUES("PQ8216","Chirlac Rapid 2/0 45 cm natu HRT-15","SCH","100011","54510","94800","0","0");
INSERT INTO t_barang VALUES("PR0597","Chirlac rapid 2/0 90cm HRT","SCH","100011","53360","92800","0","0");
INSERT INTO t_barang VALUES("SB1003","Safety Box 2.5 L","PCS","300021","8850","17700","0","10");
INSERT INTO t_barang VALUES("SB1005","Safety Box 5 L","PCS","300021","11050","22100","0","10");
INSERT INTO t_barang VALUES("SB1008","Safety Box 8 L","PCS","300021","12950","25900","0","10");
INSERT INTO t_barang VALUES("SB1012","SAFETYBOX 12,5","PCS","300021","16000","35150","0","0");
INSERT INTO t_barang VALUES("SM2251","Silon 7/0 45 cm blue DS-10","SCH","100016","111314","193590","0","0");
INSERT INTO t_barang VALUES("SM2255","Silon 6/0 45 cm blue DS-12","SCH","100016","55056","95750","0","0");
INSERT INTO t_barang VALUES("SM2261","Silon 5/0 45 cm blue DS-15","SCH","100016","44045","76600","0","0");
INSERT INTO t_barang VALUES("SM2267","Silon 4/0 75 cm blue DS-19","SCH","100016","44850","78000","0","0");
INSERT INTO t_barang VALUES("SM2268","Silon 3/0 75 cm blue DS-25","SCH","100016","39000","78000","0","0");
INSERT INTO t_barang VALUES("SM2284","Silon 2/0 75 cm blue DS-30","SCH","100016","45425","79000","0","0");
INSERT INTO t_barang VALUES("SM3276","Silon 3/0 75 cm blue DS-24","SCH","100016","44850","78000","0","0");
INSERT INTO t_barang VALUES("STC01","Sabun Tangan Cair","PCS","","0","0","0","0");
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
INSERT INTO t_barang VALUES("UPE658520","PE 65X85X0.4","PCS","300025","1338","2675","0","10");



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




DROP TABLE t_city;

CREATE TABLE `t_city` (
  `id_city` varchar(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_city VALUES("BTG","BATANG");
INSERT INTO t_city VALUES("BYL","BOYOLALI");
INSERT INTO t_city VALUES("KLT","KLATEN");
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
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_customer VALUES("CUST_MH.011018.000015","BELVA MEDIKA","JL. KOL SUTARTO NO.90, JEBRES, KOTA SURAKARTA 5712","","","","","","2018-10-01 19:20:38");
INSERT INTO t_customer VALUES("CUST_MH.011018.000016","PMI SUKOHARJO","JL. RAJAWALI JOHO KEC. SUKOHARJO KAB. SUKOHARJO","","","","","","2018-10-01 19:24:03");
INSERT INTO t_customer VALUES("CUST_MH.011018.000017","RS BRAYAT MINULYA","JL. DR. SETIYABUDI NO. 106 MANAHAN BANJARSARI SURA","SLO","","","","","2018-10-01 20:05:47");
INSERT INTO t_customer VALUES("CUST_MH.011018.000018","RS MITRA KELUARGA","JL. RAYA PEDAN JUWIRING KADUNGAN PEDAN SOBAYAN","","","","","","2018-10-01 20:31:14");
INSERT INTO t_customer VALUES("CUST_MH.011018.000019","RS PANTI WALUYO","JL. JENDRAL AHMAD YANI PABELAN KARTASURA SUKOHARJO","SLO","","","","","2018-10-01 21:08:44");
INSERT INTO t_customer VALUES("CUST_MH.011018.000020","RS MARGA HUSADA","JL. LET JENDRAL S. PARMAN","","","","","","2018-10-01 21:12:11");
INSERT INTO t_customer VALUES("CUST_MH.011018.000021","RSUD KOTA SURAKARTA","JL. LETTU SUMARMO NO. 1 KADIPIRO BANJARSARI SURAKA","SLO","","","","","2018-10-01 21:22:46");
INSERT INTO t_customer VALUES("CUST_MH.011018.000022","RSUD DR. SOERATNO GEMOLONG","JL. DR. SOETOMO NO.792, GEMOLONG, DUSUN 1, GEMOLON","SRG","","","","","2018-10-01 21:34:20");
INSERT INTO t_customer VALUES("CUST_MH.011018.000023","TOKO RIZAL MEDIKA","SOLO","SLO","","","","","2018-10-01 21:46:21");
INSERT INTO t_customer VALUES("CUST_MH.011018.000024","PT. MH MEDIKA","VILLA SERPONG BLOK A 2/02 RT. 000 RW. 000 TANGERAN","","","","","","2018-10-01 21:49:11");
INSERT INTO t_customer VALUES("CUST_MH.011018.000025","RSIA AISYIYAH KLATEN","JL. KH HASYIM ASARI SROGO MOJAYAN KLATEN TENGAH","KLT","","","","","2018-10-01 21:52:06");
INSERT INTO t_customer VALUES("CUST_MH.021018.000026","AJM","SURAKARTA","SLO","","","","","2018-10-02 09:37:14");
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
INSERT INTO t_customer VALUES("CUST_MH.300918.000011","RS ORTOPEDI Dr. SOEHARSO","JL. A YANI, MENDUNGAN, PABELAN, KARTASURA, KAB. SU","SLO","","","","","2018-10-01 19:17:38");
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
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000035","2018-10-02 09:39:49","SO_MH.021018.000036","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000036","2018-10-02 09:45:49","SO_MH.021018.000037","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
INSERT INTO t_delivery_order VALUES("DO_MH.021018.000037","2018-10-02 09:51:15","SO_MH.021018.000038","CUST_MH.021018.000026","","320000","0","320000","0000-00-00 00:00:00","");
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO t_delivery_order_detail VALUES("1","DO_MH.300918.000001","TH1001","8000","0","960000","120");
INSERT INTO t_delivery_order_detail VALUES("2","DO_MH.300918.000002","TH1001","8000","0","960000","120");
INSERT INTO t_delivery_order_detail VALUES("3","DO_MH.300918.000003","TH1001","6800","0","1632000","240");
INSERT INTO t_delivery_order_detail VALUES("4","DO_MH.300918.000004","187955","52000","0","1040000","20");
INSERT INTO t_delivery_order_detail VALUES("5","DO_MH.300918.000005","TG4001","1500","0","150000","100");
INSERT INTO t_delivery_order_detail VALUES("6","DO_MH.300918.000005","TH1001","7000","0","672000","96");
INSERT INTO t_delivery_order_detail VALUES("7","DO_MH.300918.000006","KPE6070","675","0","67500","100");
INSERT INTO t_delivery_order_detail VALUES("8","DO_MH.300918.000007","KPE8010","1800","0","540000","300");
INSERT INTO t_delivery_order_detail VALUES("9","DO_MH.300918.000008","KPE6010","950","0","475000","500");
INSERT INTO t_delivery_order_detail VALUES("10","DO_MH.300918.000009","KPE6010","30000","0","450000","15");
INSERT INTO t_delivery_order_detail VALUES("11","DO_MH.300918.000010","PKP01001","5500","0","550000","100");
INSERT INTO t_delivery_order_detail VALUES("12","DO_MH.300918.000011","PLM03710","37950","0","379500","10");
INSERT INTO t_delivery_order_detail VALUES("13","DO_MH.300918.000012","KPE8010","2000","0","400000","200");
INSERT INTO t_delivery_order_detail VALUES("14","DO_MH.300918.000013","KPE6010","1300","0","195000","150");
INSERT INTO t_delivery_order_detail VALUES("15","DO_MH.300918.000013","KPE8010","1600","0","240000","150");
INSERT INTO t_delivery_order_detail VALUES("16","DO_MH.300918.000014","PLHD6010046","1150","0","3450000","3000");
INSERT INTO t_delivery_order_detail VALUES("17","DO_MH.011018.000015","SB1012","22000","0","220000","10");
INSERT INTO t_delivery_order_detail VALUES("18","DO_MH.011018.000016","KPE4060","750","0","45000","60");
INSERT INTO t_delivery_order_detail VALUES("19","DO_MH.011018.000016","KPE8010","2200","0","330000","150");
INSERT INTO t_delivery_order_detail VALUES("20","DO_MH.011018.000016","HPE901210","2500","0","375000","150");
INSERT INTO t_delivery_order_detail VALUES("21","DO_MH.011018.000016","HPE4060","650","0","97500","150");
INSERT INTO t_delivery_order_detail VALUES("22","DO_MH.011018.000017","STC01","23000","0","230000","10");
INSERT INTO t_delivery_order_detail VALUES("23","DO_MH.011018.000017","TH1001","8000","0","192000","24");
INSERT INTO t_delivery_order_detail VALUES("24","DO_MH.011018.000017","TK001","3500","0","70000","20");
INSERT INTO t_delivery_order_detail VALUES("25","DO_MH.011018.000018","CH01","235000","0","1175000","5");
INSERT INTO t_delivery_order_detail VALUES("26","DO_MH.011018.000019","KPE6010","30000","0","450000","15");
INSERT INTO t_delivery_order_detail VALUES("27","DO_MH.011018.000020","PL03710","85000","0","425000","5");
INSERT INTO t_delivery_order_detail VALUES("28","DO_MH.011018.000020","PL03813","120000","0","600000","5");
INSERT INTO t_delivery_order_detail VALUES("29","DO_MH.011018.000020","PL1015","138000","0","690000","5");
INSERT INTO t_delivery_order_detail VALUES("30","DO_MH.011018.000021","PL03710","23760","0","237600","10");
INSERT INTO t_delivery_order_detail VALUES("31","DO_MH.011018.000021","PL03813","47880","0","718200","15");
INSERT INTO t_delivery_order_detail VALUES("32","DO_MH.011018.000022","HPE8010","1292","0","1292000","1000");
INSERT INTO t_delivery_order_detail VALUES("33","DO_MH.011018.000022","KPE8010","1433","0","1433000","1000");
INSERT INTO t_delivery_order_detail VALUES("34","DO_MH.011018.000023","HPE8010","2200","0","2200000","1000");
INSERT INTO t_delivery_order_detail VALUES("35","DO_MH.011018.000023","KPE8010","2400","0","2400000","1000");
INSERT INTO t_delivery_order_detail VALUES("36","DO_MH.011018.000024","TH1001","6900","0","1656000","240");
INSERT INTO t_delivery_order_detail VALUES("37","DO_MH.011018.000025","TH1001","7000","0","1400000","200");
INSERT INTO t_delivery_order_detail VALUES("38","DO_MH.011018.000026","SB1008","18000","0","270000","15");
INSERT INTO t_delivery_order_detail VALUES("39","DO_MH.011018.000027","PL03610","28800","0","57600","2");
INSERT INTO t_delivery_order_detail VALUES("40","DO_MH.011018.000027","PL03710","24250","0","485000","20");
INSERT INTO t_delivery_order_detail VALUES("41","DO_MH.011018.000028","TH1001","9000","0","2160000","240");
INSERT INTO t_delivery_order_detail VALUES("42","DO_MH.011018.000029","PLHD80100","2090","0","5225000","2500");
INSERT INTO t_delivery_order_detail VALUES("43","DO_MH.011018.000030","HPE4060","545","0","2043750","3750");
INSERT INTO t_delivery_order_detail VALUES("44","DO_MH.011018.000030","KPE4060","600","0","2400000","4000");
INSERT INTO t_delivery_order_detail VALUES("45","DO_MH.011018.000030","HPE6010023","1818","0","3408750","1875");
INSERT INTO t_delivery_order_detail VALUES("46","DO_MH.011018.000031","TH1001","8000","0","1920000","240");
INSERT INTO t_delivery_order_detail VALUES("47","DO_MH.011018.000032","SB1008","16000","0","800000","50");
INSERT INTO t_delivery_order_detail VALUES("48","DO_MH.011018.000033","SB1003","10500","0","1501500","143");
INSERT INTO t_delivery_order_detail VALUES("49","DO_MH.011018.000034","101090","440000","0","1320000","3");
INSERT INTO t_delivery_order_detail VALUES("50","DO_MH.021018.000035","SB1008","16000","0","320000","20");
INSERT INTO t_delivery_order_detail VALUES("51","DO_MH.021018.000036","SB1008","16000","0","320000","20");
INSERT INTO t_delivery_order_detail VALUES("52","DO_MH.021018.000037","SB1008","16000","0","320000","20");



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



DROP TABLE t_minor;

CREATE TABLE `t_minor` (
  `id_minor` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `fk_mayor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_minor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO t_minor VALUES("001","PLASTIK KRESEK","");
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
INSERT INTO t_pembelian VALUES("PO_MH.021018.000084","2018-10-02 09:37:53","","0005","","","220000","0","220000","0000-00-00 00:00:00","");
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

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
INSERT INTO t_penjualan VALUES("SO_MH.021018.000036","2018-10-02 09:38:23","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000037","2018-10-02 09:44:58","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
INSERT INTO t_penjualan VALUES("SO_MH.021018.000038","2018-10-02 09:50:16","2018-10-02 00:00:00","CUST_MH.021018.000026","05","","320000","0","320000","0000-00-00 00:00:00","","1");
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO t_penjualan_detail VALUES("1","SO_MH.300918.000001","TH1001","8000","0","960000","120");
INSERT INTO t_penjualan_detail VALUES("2","SO_MH.300918.000002","TH1001","8000","0","960000","120");
INSERT INTO t_penjualan_detail VALUES("3","SO_MH.300918.000003","TH1001","6800","0","1632000","240");
INSERT INTO t_penjualan_detail VALUES("4","SO_MH.300918.000004","187955","52000","0","1040000","20");
INSERT INTO t_penjualan_detail VALUES("5","SO_MH.300918.000005","TG4001","1500","0","150000","100");
INSERT INTO t_penjualan_detail VALUES("6","SO_MH.300918.000005","TH1001","7000","0","672000","96");
INSERT INTO t_penjualan_detail VALUES("7","SO_MH.300918.000006","KPE6070","675","0","67500","100");
INSERT INTO t_penjualan_detail VALUES("8","SO_MH.300918.000007","KPE8010","1800","0","540000","300");
INSERT INTO t_penjualan_detail VALUES("9","SO_MH.300918.000008","KPE6010","950","0","475000","500");
INSERT INTO t_penjualan_detail VALUES("10","SO_MH.300918.000009","KPE6010","30000","0","450000","15");
INSERT INTO t_penjualan_detail VALUES("11","SO_MH.300918.000010","PKP01001","5500","0","550000","100");
INSERT INTO t_penjualan_detail VALUES("12","SO_MH.300918.000012","PLM03710","37950","0","379500","10");
INSERT INTO t_penjualan_detail VALUES("13","SO_MH.300918.000013","KPE8010","2000","0","400000","200");
INSERT INTO t_penjualan_detail VALUES("14","SO_MH.300918.000014","KPE6010","1300","0","195000","150");
INSERT INTO t_penjualan_detail VALUES("15","SO_MH.300918.000014","KPE8010","1600","0","240000","150");
INSERT INTO t_penjualan_detail VALUES("16","SO_MH.300918.000015","PLHD6010046","1150","0","3450000","3000");
INSERT INTO t_penjualan_detail VALUES("17","SO_MH.011018.000016","SB1012","22000","0","220000","10");
INSERT INTO t_penjualan_detail VALUES("18","SO_MH.011018.000017","KPE4060","750","0","45000","60");
INSERT INTO t_penjualan_detail VALUES("19","SO_MH.011018.000017","KPE8010","2200","0","330000","150");
INSERT INTO t_penjualan_detail VALUES("20","SO_MH.011018.000017","HPE901210","2500","0","375000","150");
INSERT INTO t_penjualan_detail VALUES("21","SO_MH.011018.000017","HPE4060","650","0","97500","150");
INSERT INTO t_penjualan_detail VALUES("22","SO_MH.011018.000018","STC01","23000","0","230000","10");
INSERT INTO t_penjualan_detail VALUES("23","SO_MH.011018.000018","TH1001","8000","0","192000","24");
INSERT INTO t_penjualan_detail VALUES("24","SO_MH.011018.000018","TK001","3500","0","70000","20");
INSERT INTO t_penjualan_detail VALUES("25","SO_MH.011018.000019","CH01","235000","0","1175000","5");
INSERT INTO t_penjualan_detail VALUES("26","SO_MH.011018.000020","KPE6010","30000","0","450000","15");
INSERT INTO t_penjualan_detail VALUES("27","SO_MH.011018.000021","PL03710","85000","0","425000","5");
INSERT INTO t_penjualan_detail VALUES("28","SO_MH.011018.000021","PL03813","120000","0","600000","5");
INSERT INTO t_penjualan_detail VALUES("29","SO_MH.011018.000021","PL1015","138000","0","690000","5");
INSERT INTO t_penjualan_detail VALUES("30","SO_MH.011018.000022","PL03710","23760","0","237600","10");
INSERT INTO t_penjualan_detail VALUES("31","SO_MH.011018.000022","PL03813","47880","0","718200","15");
INSERT INTO t_penjualan_detail VALUES("32","SO_MH.011018.000023","HPE8010","1292","0","1292000","1000");
INSERT INTO t_penjualan_detail VALUES("33","SO_MH.011018.000023","KPE8010","1433","0","1433000","1000");
INSERT INTO t_penjualan_detail VALUES("34","SO_MH.011018.000024","HPE8010","2200","0","2200000","1000");
INSERT INTO t_penjualan_detail VALUES("35","SO_MH.011018.000024","KPE8010","2400","0","2400000","1000");
INSERT INTO t_penjualan_detail VALUES("36","SO_MH.011018.000025","TH1001","6900","0","1656000","240");
INSERT INTO t_penjualan_detail VALUES("37","SO_MH.011018.000026","TH1001","7000","0","1400000","200");
INSERT INTO t_penjualan_detail VALUES("38","SO_MH.011018.000027","SB1008","18000","0","270000","15");
INSERT INTO t_penjualan_detail VALUES("39","SO_MH.011018.000028","PL03610","28800","0","57600","2");
INSERT INTO t_penjualan_detail VALUES("40","SO_MH.011018.000028","PL03710","24250","0","485000","20");
INSERT INTO t_penjualan_detail VALUES("41","SO_MH.011018.000029","TH1001","9000","0","2160000","240");
INSERT INTO t_penjualan_detail VALUES("42","SO_MH.011018.000030","PLHD80100","2090","0","5225000","2500");
INSERT INTO t_penjualan_detail VALUES("43","SO_MH.011018.000031","HPE4060","545","0","2043750","3750");
INSERT INTO t_penjualan_detail VALUES("44","SO_MH.011018.000031","KPE4060","600","0","2400000","4000");
INSERT INTO t_penjualan_detail VALUES("45","SO_MH.011018.000031","HPE6010023","1818","0","3408750","1875");
INSERT INTO t_penjualan_detail VALUES("46","SO_MH.011018.000032","TH1001","8000","0","1920000","240");
INSERT INTO t_penjualan_detail VALUES("47","SO_MH.011018.000033","SB1008","16000","0","800000","50");
INSERT INTO t_penjualan_detail VALUES("48","SO_MH.011018.000034","SB1003","10500","0","1501500","143");
INSERT INTO t_penjualan_detail VALUES("49","SO_MH.011018.000035","101090","440000","0","1320000","3");
INSERT INTO t_penjualan_detail VALUES("50","SO_MH.021018.000036","SB1008","16000","0","320000","20");
INSERT INTO t_penjualan_detail VALUES("51","SO_MH.021018.000037","SB1008","16000","0","320000","20");
INSERT INTO t_penjualan_detail VALUES("52","SO_MH.021018.000038","SB1008","16000","0","320000","20");



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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

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



