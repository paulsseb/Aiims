<?php 
session_start();
include('../dist/includes/dbcon.php');
	$branch=$_SESSION['branch'];
	$name = $_POST['prod_name'];
	$qty = $_POST['qty'];
	
	date_default_timezone_set('Asia/Manila');

	$date = date("Y-m-d H:i:s");
	$id=$_SESSION['id'];
	
	$query=mysqli_query($con,"select prod_name,prod_qty from product where prod_id='$name'")or die(mysqli_error());
  
        $row=mysqli_fetch_array($query);
		$product=$row['prod_name'];
	$remarks="added $qty of $product";  
	 $bal = $row['prod_qty'];
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($con));
		
		
	mysqli_query($con,"UPDATE product SET prod_qty=prod_qty+'$qty' where prod_id='$name' and branch_id='$branch'") or die(mysqli_error($con)); 
			
			mysqli_query($con,"INSERT INTO stockin(prod_id,qty,date,branch_id,Balance_before) VALUES('$name','$qty','$date','$branch','$bal')")or die(mysqli_error($con));
			mysqli_query($con,"INSERT INTO producttracker(Action, PurchaseQty, Balance, prod_id,  branch_id) 
				VALUES('PURCHASE','$qty','$bal','$name','$branch')")or die(mysqli_error($con));
			echo "<script type='text/javascript'>alert('Successfully added new stocks!');</script>";
					  echo "<script>document.location='stockin.php'</script>";  
	
?>