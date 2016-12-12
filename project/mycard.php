<?php
 require "dbconnect.php";
 session_start();
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="buti.css">

<script type="text/javascript" src="jquery.js"></script>

<script language="javascript">


function MyCard(UID ,CID, account){
	var p = "salePrice" + CID;
	var a = "saleAccount" + CID;
	var t = "saleTime" + CID;
	var Price = document.getElementById(p).value; //拍賣價錢
	var Account = document.getElementById(a).value;//拍賣數量
	var Addtime = document.getElementById(t).value;//拍賣時間
	if(Account > account)
		alert("數量錯誤");

	else if(Price && Account && Addtime){
		$.ajax({
			url: "ToSale.php",
			dataType: 'html',
			type: 'POST',
			data: { uid: UID , cid: CID, time: Addtime, price: Price, account: Account}, //optional, you can send field1=10, field2='abc' to URL by this
			error: function(response) { //the call back function when ajax call fails
				alert('Ajax request failed!');
				},
			success: function(response) { //the call back function when ajax call succeed
				alert(response);
				reloadpage();
				}
		});
	}
	else 
		alert('failed!');
}
function getMoney(getYN){
	if(getYN == 1){
		alert(getYN);
		$.ajax({
			url: "getMoney.php",
			dataType: 'html',
			type: 'POST',
			data: {}, //optional, you can send field1=10, field2='abc' to URL by this
			error: function(response) { //the call back function when ajax call fails
				alert('Ajax request failed!');
				},
			success: function(response) { //the call back function when ajax call succeed
				alert(response);
				reloadpage();
				}
		});
	}
	else if(getYN == 0)
		alert("faily get money");
}

function reloadpage(){
	window.location.reload();
}
</script>
</head>

<body>
<center>
<?php
$myname = $_SESSION['uID'];
$i=1; //counter for bombs	
$card = "select * from card "; // 搜尋每個卡片
$result=mysqli_query($conn,$card) or die("db error");
$arr = array(); //define an array for bombs
$cardaccount = mysqli_num_rows($result);
$allcard = 0; //卡片玩家擁有個數
echo "<h1> hi!$myname</h1>";
echo "<table width='100' border='1'>
	<tr>
		<td>ID</td>
		<td>name</td>
		<td>account</td>
		<td>saleaccount</td>
		<td>saleprice</td>
		<td>time</td>
	</tr>";
for($n = 1; $n<=$cardaccount;$n++){ // 印出每張卡片
	$card = "select * from card where CID = $n";
	$result=mysqli_query($conn,$card) or die("db error");
	while($cardrow=mysqli_fetch_assoc($result)) {
		$sql="select * from user ,mycard ,card 
			where loginID = '$myname' and UID = MUID and CID = MCID and CID = $n"; //select all bomb information from DB
		$res=mysqli_query($conn,$sql) or die("db error");
		$row=mysqli_fetch_assoc($res);
		echo "<tr>
				<td>$i</td>
				<td>".$cardrow['cardname']."</td>";
			if(mysqli_num_rows($res)==0) // 判斷玩家是否擁有這張卡片
				echo "<td>0</td>";
			else {
				echo "<td>".$row['account']."</td>"; //印出卡片數量
				$allcard++; //擁有卡片個數++
			}
		echo	"<td><input name='saleAccount' type='text' id='saleAccount". $row['CID'] ."'/></td>
				<td><input name='salePrice' type='text' id='salePrice". $row['CID'] ."'/></td>
				<td><input name='saleTime' type='text' id='saleTime". $row['CID'] ."'/></td>
				<td><button type ='button' id='but' 
				onclick='MyCard(".$row['UID'].",".$row['CID'].",".$row['account'].")'>拍賣</button></td>
			</tr>";
		$i++;
	}
}
echo "</table>";
?>
<?php //換取金錢
	echo "<br>";
	if($allcard == 8)
		echo "<button type ='button' id='but' onclick='getMoney(1)'>金錢</button>";
	else
		echo "<button type ='button' id='but' onclick='getMoney(0)'>尚未</button>";
?>
</center>
</body></html>