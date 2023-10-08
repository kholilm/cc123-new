<!-- Modal -->
<div class="modal fade" id="modal-inputdata">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Default Modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <form action="inputdata/update" class="formsimpan" enctype="multipart/form-data">
                <?= form_open('inputdata/update', ['class' => 'formsimpan']) ?>
                <?= csrf_field() ?>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Judul Menu</label>
                                <input type="hidden" id="id" name="id" value="<?= $data->id_menu ?>">
                                <input id="menu" name="menu" class="form-control" placeholder="Title" type="text" value="<?= $data->menu ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Url</label>
                                <input id="url" name="url" class="form-control" placeholder="Url" type="text" value="<?= $data->url ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="form-label">Order</label>
                                <input id="sort_menu" name="sort_menu" class="form-control" type="number" placeholder="Order" value="<?= $data->sort_menu ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-label">Menu</label>
                                <select id="menu_id" name="menu_id" class="form-control select2">
                                    <option value="0">Menu Utama</option>
                                    <?php foreach ($datamenu as $menu) : ?>
                                        <?php if ($menu->id_menu == $data->menu_id) : ?>
                                            <option value="<?= $menu->id_menu ?>" selected><?= $menu->menu ?></option>
                                        <?php else : ?>
                                            <option value="<?= $menu->id_menu ?>"><?= $menu->menu ?></option>
                                        <?php endif ?>
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
                                <input id="icon" name="icon" class="form-control" type="text" placeholder="Icon" value="<?= $data->icon ?>">
                                <span class="help-block text-danger"></span>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <label class="form-label">Type Menu</label>
                            <select name="jenis_menu" id="jenis_menu" class="form-control">
                                <option value="">Pilih</option>
                                <?php foreach ($jenismenu as $jenis) : ?>
                                    <?php if ($jenis == $data->jenis_menu) : ?>
                                        <option value="<?= $jenis ?>" selected><?= $jenis ?></option>
                                    <?php else : ?>
                                        <option value="<?= $jenis ?>"><?= $jenis ?></option>
                                    <?php endif ?>
                                <?php endforeach ?>
                            </select>
                        </div>
                    </div>

                    <div>
                        <td>
                            <input type="file" id="path_pdf" name="path_pdf">
                            <input type="hidden" id="pdflama" name="pdflama" value="<?= $data->path_pdf ?>">
                            <span class="help-block text-danger"></span>
                        </td>
                    </div>

                    <br>

                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="checkbox">
                                <label class="form-check-label">
                                    <input type="checkbox" value="1" id="status" name="status" <?= ($data->is_active == 1) ? 'checked' : null ?>>
                                    Status Aktif
                                </label>
                                <input type="hidden" name="is_active" id="is_active" value="<?= $data->is_active ?>">
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
        simpandata();
    });

    function simpandata() {
        $('.tombolSimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formsimpan')[0];
            let data = new FormData(form);

            $.ajax({
                type: "post",
                url: "inputdata/update",
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
                        $('#modal-inputdata').modal('hide');
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
    }
    $("#status").click(function() {
        const nilai = $("#status:checked").val();
        $('#is_active').val(nilai)
    });
</script>