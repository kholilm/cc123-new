<!-- Modal -->
<div class="modal fade" id="modal-inputfolder" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Default Modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!-- to controller -->
            <form action="inputfolder" class="formsimpan" enctype="multipart/form-data">
                <?= csrf_field() ?>
                <div class="modal-body">
                    <div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Folder Name</label>
                                    <input id="foldername" name="foldername" class="form-control" type="text" placeholder="foldername" autofocus>
                                    <span class="help-block text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Select Folder</label>
                                    <input type="file" class="btn btn-light" id="files" name="files[]" multiple directory="" webkitdirectory="" moxdirectory="" />
                                    <span class="help-block text-danger"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer text-right">
                        <button type="submit" class="btn btn-primary btn-sm tombolSimpan" value="Upload" name="upload">Simpan</button>
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
                url: "inputfolder",
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
                        $('#modal-inputfolder').modal('hide');
                        reload_table();
                    } else {
                        for (var i = 0; i < response.inputerror.length; i++) {
                            $('[name="' + response.inputerror[i] + '"]').parent().addClass('has-error');
                            $('[name="' + response.inputerror[i] + '"]').addClass('is-invalid');
                            $('[name="' + response.inputerror[i] + '"]').next().text(response.error_string[i]);
                        }
                    }
                    // if (response.gagal) {
                    //     Swal.fire({
                    //         icon: 'success',
                    //         title: `<strong>${response.sukses}</strong>`,
                    //         showConfirmButton: false,
                    //         timer: 1000,
                    //         timerProgressBar: true,
                    //     })
                    // }
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