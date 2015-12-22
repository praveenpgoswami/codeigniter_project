<style>
.cart-list.chept2{
float: left;
width: 100%;
margin: 20px 0px;
}
.thanks-main{
width:70%;
margin:0px auto;
}
.booking{
background:#717171;
width:100%;
text-align:center;
font-size:24px;
color:#fff;
padding:5px 0px;
}
.booking h1{
padding:5px 0px;
margin:0px;
font-size:35px;
font-weight: 100;
}
.booking h5{
padding:0px;
padding-bottom:10px;
margin:0px;
font-size: 13px;
font-weight: 100;
}
.booking-success{
background: #E7E7E7;
float: left;
width: 96%;
margin: 16px;
}
.grid-con{
width:95%;
margin:0 auto;
}
.booking-success h2 {
margin-left: 2%;
}
.grid-step1{
width:100%;
float:left;
margin: 10px 0px;
}
.grid-step1 p{
width: 45%;
float: left;
background: #a5a5a5;
color: #fff;
padding: 10px;
margin-right: 12px;
}
.grid-step1 p a{
text-decoration:none;
}
.grid-step1 p:last-child{
margin-right:0px;
margin-left: 20px;
}
.grid-step1 p a{
color:#fff;
}
.thanks-book{
border:1px solid #a5a5a5;
float: left;
width: 100%;
}
</style>
<?php
 echo '<pre>'; 
//print_r($_REQUEST); 

include_once('databaseValues.php');
$conn = @mysql_pconnect($hostName,$dbUserName,$dbPassword) or die("Database Connection Failed<br>". mysql_error());
mysql_select_db($databaseName, $conn) or die('DB not selected'); 


if($_REQUEST['Status']==1) {
$Bookingno = "EN152038";//$_REQUEST['RefNo'];
$Amount = $_REQUEST['Amount'];
$Authcode = $_REQUEST['AuthCode'];
$Transid = $_REQUEST['TransId'];
$signature =  $_REQUEST['Signature'];
$qry = "select * from  fc_rentalsenquiry where Bookingno='".$Bookingno."'";
$result = mysql_query($qry);
$row=mysql_fetch_array($result,MYSQLI_ASSOC);

 $user_id =$row['user_id'];
 $prd_id =$row['prd_id'];
 $sell_id = $row['renter_id'];
 $Enquiryid = $row['id'];
$total_amt = $_REQUEST['Amount'];
$price = $_REQUEST['Amount'];
$status ="Paid";
$payment_type ="ipay";

$insertqry ="insert into fc_payment(user_id,sell_id,product_id,price,total,paypal_transaction_id,status,EnquiryId) value('".$user_id."','".$sell_id."','".$prd_id."','".$total_amt."','".$total_amt."','".$signature."','".$status."','".$payment_type."')";
mysql_query($insertqry);  }
else {
		   echo '<pre>'; print_r($_REQUEST); die;
		    $Bookingno = $_REQUEST['RefNo'];
			$Amount = $_REQUEST['Amount'];
			$Authcode = $_REQUEST['AuthCode'];
			$Transid = $_REQUEST['TransId'];
			$signature =  $_REQUEST['Signature'];
			$qry = "select * from  fc_rentalsenquiry where Bookingno='".$Bookingno."'";
			$result = mysql_query($qry);
			$row=mysql_fetch_array($result,MYSQLI_ASSOC);
			$user_id =$row['user_id'];
			$prd_id =$row['prd_id'];
			$sell_id = $row['renter_id'];
			$Enquiryid = $row['id'];
			$total_amt = $_REQUEST['Amount'];
			$price = $_REQUEST['Amount'];
			$status ="Paid";
			$payment_type ="ipay";
			$Errdesc = $_REQUEST['ErrDesc'];
            $insertqry ="insert into   fc_payment(user_id,sell_id,product_id,price,total,paypal_transaction_id,status,EnquiryId) value('".$user_id."','".$sell_id."','".$prd_id."','".$total_amt."','".$total_amt."','".$signature."','".$status."','".$payment_type."')";
			mysql_query($insertqry);
		    echo "<div>Your Transaction is failed ! Kindly contact your bank.</div>";
		    
		}
?>

<div class="thanks-main">
<div class="thanks-book">

<div class="booking">
<h1>Thanks for your Booking</h1>
<h5>We are glad that you choose our service, please review us after your journey.</h5>
</div>
<div class="booking-success">
<h2>Booking Success</h2>
<div class="grid-con">
<div class="grid-step1">
<p><a href="">Your Booking Reference Number is-</a></p>
<p><a href=""><?php echo $Bookingno; ?></a></p>
</div>
<div class="grid-step1">
<p><a href="">Amount to be paid -</a></p>
<p><a href="">Rm <?php echo $Amount; ?></a></p>
</div></div>
</div>
</div>
</div>
