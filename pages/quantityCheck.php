<?php
// Fetching Values From URL
$json = file_get_contents('php://input');
$data = json_decode($json);

$prod_name = $_POST['prod_name'];
$branch = 1;//$_POST['branch'];
include("../dist/includes/db_con.php");
 date_default_timezone_set('Africa/Nairobi');
$today = date("d-m-Y");//sets the current date time zone
$dup = $dbh->query("select * from stockin natural join product natural join supplier where branch_id='$branch' and prod_id ='$prod_name' order by date desc");//queries from the database for user login details
$result = array();

if($dup){
	$exp =0;
	while($prod = $dup->fetch(PDO::FETCH_OBJ))
		$exp = $prod->prod_qty;
	array_push($result, 
				array('prod'=>$exp));
	echo json_encode(array('prod'=>$exp));
	return json_encode(array('result'=>$result));


}else{
	//echo "not sucesss";
	array_push($result, 
				array('errors'=>" no data selected "));
	//echo json_encode(array('trips'=>$exp));
	return json_encode(array('result'=>$result));
//return false;


}

?>