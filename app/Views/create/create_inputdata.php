<!-- Modal -->
<div class="modal fade" id="modal-inpudata" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Default Modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="inputdata/save" class="formsimpan" enctype="multipart/form-data">
                <?= form_open('inputdata/save', ['class' => 'formsimpan']) ?>
                <?= csrf_field() ?>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Title</label>
                                <input id="menu" name="menu" class="form-control" placeholder="Title" type="text">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Url</label>
                                <input id="url" name="url" class="form-control" placeholder="Url" type="text">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="form-label">Order</label>
                                <input id="sort_menu" name="sort_menu" class="form-control" type="number" placeholder="Order">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Menu</label>
                                <select id="menu_id" name="menu_id" class="form-control select2">
                                    <option value="0">Menu Utama</option>
                                    <?php foreach ($datamenu as $menu) : ?>
                                        <option value="<?= $menu->id_menu ?>"><?= $menu->menu ?></option>
                                    <?php endforeach ?>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <!-- <div class="col-md-4">
                            <div class="form-group">
                                <label class="form-label">Controller</label>
                                <input id="controller" name="controller" class="form-control" type="text" placeholder="Controller">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div> -->
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Icon</label>
                                <input id="icon" name="icon" class="form-control" type="text" placeholder="Icon">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <label class="form-label">Type Menu</label>
                            <select name="jenis_menu" id="jenis_menu" class="form-control">
                                <option value="">Pilih</option>
                                <?php foreach ($jenismenu as $menu) : ?>
                                    <option value="<?= $menu ?>"><?= $menu ?></option>
                                <?php endforeach ?>
                                <!-- $jenismenu in controller  -->
                                <!-- <option value="nav-bar">Nav-Bar</option> -->
                                <!-- <option value="side-bar">Side-bar</option> -->
                            </select>
                        </div>
                    </div>
                    <div>
                        <label>Select files</label>
                        <div>
                            <input type="file" class="btn btn-light" id="path_pdf" name="path_pdf">
                            <span class="help-block text-danger"></span>
                        </div>
                    </div>
                    <!-- <label for="input-folder-3">Select files/folders</label>
                    <div class="file-loading">
                        <input id="input-folder-3" class="btn btn-light" name="input-folder-3[]" type="file" multiple>
                    </div> -->
                    <br>
                    <div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <div class="checkbox">
                                    <label class="form-check-label">
                                        <input type="checkbox" value="1" id="status" name="status">
                                        Status Aktif
                                    </label>
                                    <input type="hidden" name="is_active" id="is_active">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer text-right">
                    <button type="submit" class="btn btn-primary btn-sm tombolSimpan">Simpan</button>
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Batal</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('.tombolSimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formsimpan')[0];
            let data = new FormData(form);

            $.ajax({
                type: "post",
                url: "inputdata/save",
                data: data,
                dataType: "json",
                processData: false,
                contentType: false,
                cache: false,
                beforeSend: function(e) {
                    $('.tombolSimpan').prop('disabled', true);
                    $('.tombolSimpan').html('<i class="fa fa-spin fa-spinner"></i>');
                },
                complete: function() {
                    $('.tombolSimpan').prop('disabled', false);
                    $('.tombolSimpan').html('Simpan');
                },
                success: function(response) {
                    if (response.sukses) {
                        Swal.fire({
                            icon: 'success',
                            title: `<strong>${response.sukses}</strong>`,
                            showConfirmButton: false,
                            timer: 1000,
                            timerProgressBar: true,
                        })
                        $('.help-block').empty();
                        $('.is-invalid').removeClass('is-invalid');
                        $('#modal-inpudata').modal('hide');
                        reload_table();
                    } else {
                        for (var i = 0; i < response.inputerror.length; i++) {
                            $('[name="' + response.inputerror[i] + '"]').parent().addClass('has-error');
                            $('[name="' + response.inputerror[i] + '"]').addClass('is-invalid');
                            $('[name="' + response.inputerror[i] + '"]').next().text(response.error_string[i]);
                        }
                    }
                },
                error: function(xhr, thrownError) {
                    alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                }
            });
        });
    });
    $("#status").click(function() {
        var nilai = $("#status:checked").val();
        $('#is_active').val(nilai)
    });
</script>

<!-- <script>
    $(document).ready(function() {
        $("#input-folder-3").fileinput({
            uploadUrl: "/file-upload-batch/2",
            hideThumbnailContent: true // hide image, pdf, text or other content in the thumbnail preview
        });
    });
</script> -->