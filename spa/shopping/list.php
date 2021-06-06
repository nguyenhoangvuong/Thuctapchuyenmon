<html>
<head>
<title>ThaiCreate.Com</title>
</head>
<body>
<?php
$objConnect = mysql_connect("localhost","root","root") or die(mysql_error());
$objDB = mysql_select_db("spa");
mysql_query("SET NAMES UTF8");
$strSQL = "SELECT * FROM tb_facebook";
$objQuery = mysql_query($strSQL) or die ("Error Query [".$strSQL."]");
?>
<table width="400" border="1">
  <tr>
    <th><div align="center">Facebook ID </div></th>
    <th><div align="center">Picture </div></th>
    <th><div align="center">Name </div></th>
    <th><div align="center">CreateDate </div></th>
  </tr>
<?php
while($objResult = mysql_fetch_array($objQuery))
{
?>
  <tr>
    <td><div align="center"><?php echo $objResult["FACEBOOK_ID"];?></div></td>
    <td><a href="<?php echo $objResult["LINK"];?>"> <img src="https://graph.facebook.com/<?php echo $objResult["FACEBOOK_ID"];?>/picture"></a></td>
    <td><?php echo $objResult["NAME"];?></td>
    <td><div align="center"><?php echo $objResult["CREATE_DATE"];?></div></td>
  </tr>
<?php
}
?>
</table>
<?php
mysql_close($objConnect);
?>
</body>
</html>