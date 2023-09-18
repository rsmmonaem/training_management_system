<?php include "inc/form_header_links.php";
        include "inc/left_sidebar.php";
        include "inc/top_bar.php";
		?>

<div class="page-content-wrapper">

    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">




<div class="card">
    <div class="card-header">
        <h2>Birth Chack</h2>
    </div>
    <div class="card-body">
        <div class="row">
            <form action="<?= base_url() ?>marriage_admin/birth_chack" method="post" enctype="multipart/form-data" >
                <div class="col-md-12 col-sm-12">
                    <div class="admission-form">
                        <div class="row">

                        </div>

    
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="birth_certi_id">Birth Certificate ID </label>
                                    <input class="form-control col-md-12 col-xs-12" name="birth_id" id="birth_certi_id" value="" placeholder="Birth Certificate ID" type="text" autocomplete="off">
                                    <div class="help-block">
								</div>
                            </div>
 
<br>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 margin-top">
                                <button type="submit" class="btn btn-info a-btn btn-hover"> Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>

</div>

</div>

<? php include "inc/footer.php";
        include "inc/footer_data_table_js.php"; 
		?>
