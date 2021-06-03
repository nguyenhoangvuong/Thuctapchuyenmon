
<?php
	require_once "includes/conexion.php"; 
	$conexion=conexion();
	$sql="select tblorders.Ngayorder,tblorders.Soluong,tblsanpham.Giasanpham from tblsanpham join tblorders on tblsanpham.Id = tblorders.SanphamId where tblorders.Tinhtrangorder = 'Delivered' order by tblorders.Ngayorder";
	$result=mysqli_query($conexion,$sql);
	$valoresY=array();//montos
	$valoresX=array();//fechas

	while ($ver=mysqli_fetch_row($result)) {
		$valoresX[]=$ver[0];
		$valoresY[]=$ver[1]*$ver[2];
	}

	$datosX=json_encode($valoresX);
	$datosY=json_encode($valoresY);

 ?>
<div id="graficaLineal"   style="width:640px;height:433px;"></div>

<script type="text/javascript">
	function crearCadenaLineal(json){
		var parsed = JSON.parse(json);
		var arr = [];
		for(var x in parsed){
			arr.push(parsed[x]);
		}
		return arr;
	}
</script>


<script type="text/javascript">

	datosX=crearCadenaLineal('<?php echo $datosX ?>');
	datosY=crearCadenaLineal('<?php echo $datosY ?>');

	var trace1 = {
		x: datosX,
		y: datosY,
		type: 'scatter'
	};

	var data = [trace1];

	Plotly.newPlot('graficaLineal', data);
</script>