
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">About Us</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Update About Page</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div><!-- /.content-header -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->


            <div class="row">

                <form action="<?= base_url('super_admin/update_about_us');?>" method="post" enctype="multipart/form-data">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="">
                                    <h5 class="modal-title" id="exampleModalform">Update About Page</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="field-1" class="control-label">About Page</label>
                                                <input type="hidden" name="pages_id" value="<?= $data->pages_id?>">
                                                <input type="text" class="form-control" id="field-1" name="pages_title" value="<?= $data->pages_title?>" required="">
                                            </div>
                                        </div>


                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="field-6" class="control-label">About Page Image</label>
                                                <input type="hidden" name="old_image" value="<?= $data->pages_image?>">
                                                <input type="file" class="form-control" id="field-6" name="pages_image" >
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="field-6" class="control-label">Existing Image</label>
                                                <img class="img-fluid" style="width:150px; height:150px;" src="<?= base_url() ?>uploads/about/<?= $data->pages_image?>">
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="field-3" class="control-label">Description</label>
                                                <textarea name="pages_description" class="form-control" id="summernote" cols="30" rows="20"><?= $data->pages_description?></textarea>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-raised btn-primary ml-2">Update</button>
                                </div>
                            </div>
                        </div>


                    </div>
                </form>
            </div>
            <!-- /.row -->

            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
    </section>
</div>
