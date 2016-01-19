<?php
$this->load->view('admin/templates/header.php');
extract($privileges);
?>
<?php
	$active_users = $inactive_users = 0;
	if ($usersList->num_rows()>0){
		foreach ($usersList->result() as $row){
			$status = strtolower($row->status);
			if ($status == 'active'){
				$active_users++;
			}else {
				$inactive_users++;
			}
		}
	}
?>
<script type="text/javascript">
/*=================
CHART 5
===================*/
$(function(){
  plot2 = jQuery.jqplot('chart5',
    [[['Active',<?php echo $active_users; ?>],['Inactive', <?php echo $inactive_users; ?>]]],
    {
      title: ' ',
      seriesDefaults: {
        shadow: false,
        renderer: jQuery.jqplot.PieRenderer,
        rendererOptions: {
          startAngle: 180,
          sliceMargin: 4,
          showDataLabels: true }
      },
		grid: {
         borderColor: '#ccc',     // CSS color spec for border around grid.
        borderWidth: 2.0,           // pixel width of border around grid.
        shadow: false               // draw a shadow for grid.
    },
      legend: { show:true, location: 'w' }
    }
  );
});

</script>
<div id="content">
		<div class="grid_container">

            <div class="grid_6">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon list"></span>
						<h6>Pet Owner Dashboard</h6>
					</div>
					<div class="widget_content">
					<h4><?php echo $usersList->num_rows();?> users registered in this site</h4>
						<div id="chart5" class="chart_block">
						</div>
					</div>
				</div>
			</div>

			<div class="grid_6">
				<div class="widget_wrap">
					<div class="widget_top">
						<span class="h_icon image_1"></span>
						<h6>Pet Owner</h6>
					</div>
					<div class="widget_content">
						<table class="wtbl_list">
						<thead>
						<tr>
							<th>
								 Full Name
							</th>
							<th>
								 Status
							</th>
							<th>
								 Email
							</th>
							<th>
								 Mobile
							</th>
					</tr>
						</thead>
						<tbody>
						<?php
						if ($usersList->num_rows() > 0){
							$result = $usersList->result_array();
							for ($i=0;$i<5;$i++){
								if (isset($result[$i]) && is_array($result[$i])){
						?>
						<tr class="tr_even">
							<td>
								 <?php echo ucfirst($result[$i]['full_name']);?>
							</td>
							<td>
								 <?php echo $result[$i]['status'];?>
							</td>
							<td>
								 <?php echo $result[$i]['email'];?>
							</td>
							<td>
								<?php echo $result[$i]['mobile_number'];?>
							</td>
						</tr>
						<?php
								}
							}
						}else {
						?>
						<tr>
							<td colspan="5" align="center">No Users Available</td>
						</tr>
						<?php }?>
						</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<span class="clear"></span>
	</div>
</div>
<?php
$this->load->view('admin/templates/footer.php');
?>