<?php $message .= '<table class=\"ui-sortable-handle currentTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" bgcolor=\"#4f595b\">
<tbody>
<tr>
<td>
<table class=\"devicewidth\" style=\"background-color: #f8f8f8;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\">
<tbody>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"left\" bgcolor=\"#4f595b\"><img style=\"margin: 15px 5px 0; padding: 0px; border: none;\" src=\"'.base_url().'images/logo/'.$logo.'\" alt=\"'.$meta_title.'\" width=\"200\" /></td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td class=\"editable\" style=\"color: #ffffff; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; text-transform: uppercase; padding: 8px 20px; background-color: #4bbeff;\" align=\"center\" valign=\"middle\">Hi '.$first_name.' '.$last_name.'</td>
</tr>
<tr>
<td height=\"50\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">We\'re excited to tell you that you have booked '.$rental_name.' To help make check-in seamless, we suggest you continue the conversation with '.$renter_fname.' '.$renter_lname.'</td>
</tr>
<tr>
<td style=\"color: #000; padding: 10px 20px 10px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\">through Stayrove\'s message system to confirm their arrival time, ask any questions you may have, and help them figure out how to best get to your listing.</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td style=\"color: #000; padding: 0px 10px; font-weight: bold; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"center\" valign=\"top\">Itinerary</td>
</tr>
<tr>
<td align=\"center\" valign=\"middle\">
<div style=\"background-color: #f3402e; display: table; border-radius: 5px; color: #ffffff; font-family: Open Sans, Arial, sans-serif; font-size: 13px; text-transform: uppercase; font-weight: bold; padding: 7px 12px; text-align: center; text-decoration: none; width: 140px; margin: auto;\"><a style=\"color: #ffffff; text-decoration: none;\" href=\"http://www.stayrove.com/1/rental/'.$prd_id.'\"><img src=\"'.$rental_image.'\" alt=\"\" width=\"300\" /> '.$rental_name.'</a></div>
</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\" bgcolor=\"#EAEAEA\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th width=\"75\">Time</th> <th width=\"75\">Date</th>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Arrive</td>
<td bgcolor=\"#FFFFFF\">'.$checkin.'</td>
</tr>
<tr align=\"center\">
<td bgcolor=\"#FFFFFF\">Depart</td>
<td bgcolor=\"#FFFFFF\">'.$checkout.'</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=\"center\">
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr style=\"padding: 10px; float: left;\">
<td align=\"center\" valign=\"top\">
<table border=\"0\" cellspacing=\"1\" cellpadding=\"5\" width=\"600\">
<tbody style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">
<tr>
<th align=\"left\">Your Renter</th>
</tr>
<tr bgcolor=\"#EAEAEA\">
<td width=\"150px\"><img src=\"product.png\" alt=\"\" /></td>
<td>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\">
<tbody>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">'.$renter_fname.' '.$renter_lname.'</td>
</tr>
<tr>
<td style=\"font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; padding: 5px 0px;\">'.$ph_no.'</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Payment</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">On the day after the guest checks in, the payout method you supplied will be credited. For details, see your Transaction History.</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold;\" align=\"left\">Cancellation Policy</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\">Flexible: Full refund 1 day prior to arrival, except fees</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"color: #4f595b; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; padding: 0px 20px;\" width=\"300px\" align=\"left\" valign=\"top\">
<table style=\"width: 100%; font-size: 13px;\">
<tbody>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">$ '.$price.'*'.$noofnights.' Night</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">$'.$amount.'</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb;\">Service Fee</td>
<td style=\"border-bottom: 1px solid #bbb;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 5px 0px;\">$'.$serviceFee.'</td>
</tr>
<tr>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">Total</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">&nbsp;</td>
<td style=\"border-bottom: 1px solid #bbb; padding: 10px 0px;\">$'.$netamount.'</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td style=\"padding: 0px 20px; color: #444444; font-family: Open Sans, Arial, Helvetica, sans-serif; font-size: 13px;\" align=\"left\" valign=\"middle\">
<p>Thanks!</p>
<p>The Stayrove Team</p>
</td>
</tr>
<tr>
<td height=\"30\">&nbsp;</td>
</tr>
<tr>
<td height=\"30\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td align=\"center\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
<tr>
<td height=\"50\" bgcolor=\"#4f595b\">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>';  ?>