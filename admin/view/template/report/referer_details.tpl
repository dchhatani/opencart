<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/report.png" alt="" /> <?php echo $heading_title_ref; ?></h1>
    </div>
    <div class="content">
      <h2><?php echo $heading_prodref ?><?php echo $refname ?></h2>
      <table class="list refprod">
        <thead>
          <tr>
            <td class="left"><?php echo $column_prodid; ?></td>
            <td class="left"><?php echo $column_prodname; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($refdetails) { ?>
          <?php foreach ($refdetails as $refdetail) { ?>
          <tr>
            <td class="left"><?php echo $refdetail['product_id']; ?></td>
            <td class="left"><?php echo $refdetail['name']; ?></td>            
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
    </div>
  </div>
</div>
<?php echo $footer; ?>