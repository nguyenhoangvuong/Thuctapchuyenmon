<?php

require('Classes/PHPExcel.php');
require('connect/db_connect.php');

if(isset($_POST['btnExport'])){
	$objExcel = new PHPExcel;
	function cellColor($cells,$color){
		global $objExcel;
		$objExcel->getActiveSheet()->getStyle($cells)->getFill()->applyFromArray(array(
			'type' => PHPExcel_Style_Fill::FILL_SOLID,
			'startcolor' => array(
				 'rgb' => $color
			)
		));
	}
	$styleArray = array(
		'font'  => array(
			'bold'  => true,
			'color' => array('rgb' => 'FF0000'),
			'size'  => 13,
			'name'  => 'Times new roman'
		));
		$styleArray1 = array(
			'font'  => array(
				'bold'  => true,
				'color' => array('rgb' => '333333'),
				'size'  => 10,
				'name'  => 'Times new roman'
			));
			$style = array(
				'alignment' => array(
					'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
				)
			);
	$objExcel->setActiveSheetIndex(0);
	$objExcel->getActiveSheet()->getColumnDimension('A')->setWidth(5);
	$objExcel->getActiveSheet()->getColumnDimension('B')->setWidth(15);
	$objExcel->getActiveSheet()->getColumnDimension('C')->setWidth(25);
	$objExcel->getActiveSheet()->getColumnDimension('D')->setWidth(25);
	$objExcel->getActiveSheet()->getColumnDimension('E')->setWidth(15);
	$objExcel->getActiveSheet()->getColumnDimension('F')->setWidth(15);
	//$objExcel->getActiveSheet()->getColumnDimension('G')->setWidth(15);
	$objExcel->getActiveSheet()->getColumnDimension('H')->setWidth(15);
	$objExcel->getActiveSheet()->getColumnDimension('I')->setWidth(19);
	$objExcel->getActiveSheet()->getColumnDimension('J')->setWidth(12);
	$objExcel->getActiveSheet()->getStyle('A6:D6')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A2')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A2')->applyFromArray($styleArray);
	$objExcel->getActiveSheet()->getStyle('A3')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A3')->applyFromArray($styleArray1);
	$objExcel->getActiveSheet()->getStyle('A4')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A4')->applyFromArray($styleArray1);
	$objExcel->getActiveSheet()->getStyle('A6')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A6')->applyFromArray($styleArray);
	$objExcel->getActiveSheet()->getStyle("A8:J8")->getFont()->setSize(12);

	$rowCount = 8;
	
	

	$objExcel->getActiveSheet()->mergeCells('A6:J6');

	cellColor('A8', 'FFFF66');
	cellColor('B8', 'FFFF66');
	cellColor('C8', 'FFFF66');
	cellColor('D8', 'FFFF66');
	cellColor('E8', 'FFFF66');
	cellColor('F8', 'FFFF66');
	cellColor('G8', 'FFFF66');
	cellColor('H8', 'FFFF66');
	cellColor('I8', 'FFFF66');
	cellColor('J8', 'FFFF66');
	$sheet = $objExcel->getActiveSheet()->setTitle('Kh??ch h??ng');

	$sheet->setCellValue('A2','TH???M M??? VI???N - CHUY??N GIA L??M ?????P');
	$sheet->setCellValue('A3','?????a ch??? : 41/58A C???u X??y,P. T??n Ph??, Qu???n 9, TP HCM');
	$sheet->setCellValue('A4','S??? ??i???n tho???i : 0347689482');
	$sheet->getStyle("A6:I6")->applyFromArray($style);
	$sheet->setCellValue('A6', "DANH S??CH KH??CH H??NG");
	$sheet->setCellValue('A'.$rowCount,'STT');
	$sheet->setCellValue('B'.$rowCount,'S??? cu???c h???n');
	$sheet->setCellValue('C'.$rowCount,'T??n kh??ch h??ng');
	$sheet->setCellValue('D'.$rowCount,'Email');
	$sheet->setCellValue('E'.$rowCount,'S??? ??i???n tho???i');
	$sheet->setCellValue('F'.$rowCount,'Ng??y h???n');
	$sheet->setCellValue('G'.$rowCount,'Gi??? h???n');
	$sheet->setCellValue('H'.$rowCount,'D???ch v???');
	$sheet->setCellValue('I'.$rowCount,'Ng??y th???c hi???n');
	$sheet->setCellValue('J'.$rowCount,'Tr???ng th??i');
	$cnt = 1;
	$result = $mysqli->query("SELECT * FROM tblcuochen");
	while($row = mysqli_fetch_array($result)){
		$rowCount++;
		$a = $row['Ngayhen'];
		$b = $row['Giohen'];
		$c = $row['Ngayapdung'];
		$sheet->setCellValue('A'.$rowCount,$cnt);

		$sheet->setCellValue('B'.$rowCount,$row['Socuochen']);
		$sheet->setCellValue('C'.$rowCount,$row['Ten']);
		$sheet->setCellValue('D'.$rowCount,$row['Email']);
		$sheet->setCellValue('E'.$rowCount,$row['Sodienthoai']);
		$sheet->setCellValue('F'.$rowCount,"$a");
		$sheet->setCellValue('G'.$rowCount,"$b");
		$sheet->setCellValue('H'.$rowCount,$row['Dichvu']);
		$sheet->setCellValue('I'.$rowCount,"$c");
		$sheet->setCellValue('J'.$rowCount,$row['Trangthai']);
		$cnt++;
	}

	$objWriter = new PHPExcel_Writer_Excel2007($objExcel);
	$filename = 'export.xlsx';
	$objWriter->save($filename);

	header('Content-Disposition: attachment; filename="' . $filename . '"');  
	header('Content-Type: application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet');  
	header('Content-Length: ' . filesize($filename));  
	header('Content-Transfer-Encoding: binary');  
	header('Cache-Control: must-revalidate');  
	header('Pragma: no-cache');  
	readfile($filename);  
	return;
}




if(isset($_POST['btnExportdichvu'])){
	$objExcel = new PHPExcel;
	function cellColor($cells,$color){
		global $objExcel;
		$objExcel->getActiveSheet()->getStyle($cells)->getFill()->applyFromArray(array(
			'type' => PHPExcel_Style_Fill::FILL_SOLID,
			'startcolor' => array(
				 'rgb' => $color
			)
		));
	}
	$styleArray = array(
		'font'  => array(
			'bold'  => true,
			'color' => array('rgb' => 'FF0000'),
			'size'  => 13,
			'name'  => 'Times new roman'
		));
		$styleArray1 = array(
			'font'  => array(
				'bold'  => true,
				'color' => array('rgb' => '333333'),
				'size'  => 10,
				'name'  => 'Times new roman'
			));
			$style = array(
				'alignment' => array(
					'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
				)
			);
	$objExcel->setActiveSheetIndex(0);
	$objExcel->getActiveSheet()->getColumnDimension('A')->setWidth(5);
	$objExcel->getActiveSheet()->getColumnDimension('B')->setWidth(25);
	$objExcel->getActiveSheet()->getColumnDimension('C')->setWidth(12);
	$objExcel->getActiveSheet()->getColumnDimension('D')->setWidth(25);
	$objExcel->getActiveSheet()->getStyle('A6:D6')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A2')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A2')->applyFromArray($styleArray);
	$objExcel->getActiveSheet()->getStyle('A3')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A3')->applyFromArray($styleArray1);
	$objExcel->getActiveSheet()->getStyle('A4')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A4')->applyFromArray($styleArray1);
	$objExcel->getActiveSheet()->getStyle('A6')->getFont()->setBold(true);
	$objExcel->getActiveSheet()->getStyle('A6')->applyFromArray($styleArray);
	$objExcel->getActiveSheet()->getStyle("A8:D8")->getFont()->setSize(12);

	$rowCount = 8;

	$objExcel->getActiveSheet()->mergeCells('A6:D6');

	cellColor('A8', 'FFFF66');
	cellColor('B8', 'FFFF66');
	cellColor('C8', 'FFFF66');
	cellColor('D8', 'FFFF66');
	$sheet = $objExcel->getActiveSheet()->setTitle('D???ch v???');

	$sheet->setCellValue('A2','TH???M M??? VI???N - CHUY??N GIA L??M ?????P');
	$sheet->setCellValue('A3','?????a ch??? : 41/58A C???u X??y,P. T??n Ph??, Qu???n 9, TP HCM');
	$sheet->setCellValue('A4','S??? ??i???n tho???i : 0347689482');
	$sheet->getStyle("A6:I6")->applyFromArray($style);
	$sheet->setCellValue('A6', "DANH S??CH D???CH V???");
	$sheet->setCellValue('A'.$rowCount,'STT');
	$sheet->setCellValue('B'.$rowCount,'T??n d???ch v???');
	$sheet->setCellValue('C'.$rowCount,'Chi ph??');
	$sheet->setCellValue('D'.$rowCount,'Ng??y t???o');
	$cnt1 = 1;
	$result = $mysqli->query("SELECT * FROM tbldichvu");
	while($row = mysqli_fetch_array($result)){
		$rowCount++;
		$d = $row['Ngaytao'];
		$sheet->setCellValue('A'.$rowCount,$cnt1);
		$sheet->setCellValue('B'.$rowCount,$row['Tendichvu']);
		$sheet->setCellValue('C'.$rowCount,$row['Chiphi']);
		$sheet->setCellValue('D'.$rowCount,"$d");
		$cnt1++;
	}

	$objWriter = new PHPExcel_Writer_Excel2007($objExcel);
	$filename = 'export.xlsx';
	$objWriter->save($filename);

	header('Content-Disposition: attachment; filename="' . $filename . '"');  
	header('Content-Type: application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet');  
	header('Content-Length: ' . filesize($filename));  
	header('Content-Transfer-Encoding: binary');  
	header('Cache-Control: must-revalidate');  
	header('Pragma: no-cache');  
	readfile($filename);  
	return;
}


?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Export data</title>
	<link rel="stylesheet" href="">
</head>
<body>
</body>
</html>