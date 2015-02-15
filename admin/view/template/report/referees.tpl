<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/report.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="dwnld"><a href="<?php echo $dwnloadhref; ?>" class="button"><?php echo "Download CSV"; ?></a></div>
    </div>
    <div class="content">
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_referer; ?></td>
            <td class="left"><?php echo $column_products; ?></td>
            <td class="left"><?php echo $column_orders; ?></td>
            <td class="left"><?php echo $column_total; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($referers) { ?>
          <?php foreach ($referers as $referer) { ?>
          <tr>
            <td class="left"><a href="<?php echo $referer['href']; ?>"><?php echo $referer['referer']; ?></a></td>
            <td class="left"><?php echo $referer['products']; ?></td>            
            <td class="left"><?php echo $referer['orders']; ?></td>
            <td class="left"><?php echo $referer['total']; ?></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="3"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class="pagination"><?php echo $pagination; ?></div>
      <div class = "head_best_referer">
      <h3><?php echo $heading_bestref1 ?></h3>
      </div>
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_referer; ?></td>
            <td class="left"><?php echo $column_products; ?></td>
            <td class="left"><?php echo $column_orders; ?></td>
            <td class="left"><?php echo $column_total; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($bestreferer) { ?>
          <tr>
            <td class="left"><a href="<?php echo $bestreferer[0]['href']; ?>"><?php echo $bestreferer[0]['referer']; ?></a></td>
            <td class="left"><?php echo $bestreferer[0]['products']; ?></td>            
            <td class="left"><?php echo $bestreferer[0]['orders']; ?></td>
            <td class="left"><?php echo $bestreferer[0]['total']; ?></td>
          </tr>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class = "head_best_referer">
      <h3><?php echo $heading_bestref2 ?></h3>
      </div>
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_referer; ?></td>
            <td class="left"><?php echo $column_products; ?></td>
            <td class="left"><?php echo $column_orders; ?></td>
            <td class="left"><?php echo $column_total; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($bestrefererp) { ?>
          <tr>
            <td class="left"><a href="<?php echo $bestrefererp[0]['href']; ?>"><?php echo $bestrefererp[0]['referer']; ?></a></td>
            <td class="left"><?php echo $bestrefererp[0]['products']; ?></td>            
            <td class="left"><?php echo $bestrefererp[0]['orders']; ?></td>
            <td class="left"><?php echo $bestrefererp[0]['total']; ?></td>
          </tr>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="3"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
    
  </div>
</div>
<script type="text/javascript"><!-- 
function getDetails() {
alert('Hello');      
var url = 'index.php?route=report/referees/downloadt&token=<?php echo $token; ?>'; 
$.ajax({
            url: url,
            success: function(data) {
                $('#ajaxDiv2 .ref_text').text("The best Customer is "+data);
                $('#ajaxDiv2').slideDown('slow');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
});    
}
//--></script> 
<?php echo $footer; ?>