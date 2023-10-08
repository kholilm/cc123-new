<?= $this->extend('templated/main') ?>
<?= $this->section('content') ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Menu Input</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-12">
                                    <button class="btn btn-success btn-sm" onclick="tambah()">+. Files</button> <!-- to function tambah dibawah -->
                                    <button class="btn btn-success btn-sm" onclick="tambahfolder()">+. Folder</button> <!-- to function tambah dibawah -->
                                    <button class="btn btn-primary btn-sm" onclick="refresh()">Refresh</button> <!-- ke function refresh dibawah -->
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table table-responsive">
                            <table id="tb_menu" class="table md-table table-sm table-bordered table-hover nowrap cell-border" width="100%">
                                <thead>
                                    <tr class="bg-success">
                                        <th>No</th>
                                        <th>Nama Menu</th>
                                        <!-- <th>Parent Menu</th> -->
                                        <th>Url</th>
                                        <!-- <th>Controller</th> -->
                                        <th>Type</th>
                                        <th>Icon</th>
                                        <th>Urutan</th>
                                        <th>Status Menu</th>
                                        <th>Opsi</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<div class="viewmodal" style="display: none"></div>
<script type="text/javascript">
    $(document).ready(function() {
        table = $('#tb_menu').DataTable({ //namatb
            "processing": true, //Feature control the processing indicator.
            "serverSide": true, //Feature control DataTables' server-side processing mode.
            "autowidth": true,
            "ordering": true,
            // Load data for the table's content from an Ajax source
            "ajax": {
                "url": "inputdata/list", // to controler
                "type": "POST",
            },
        });
    });

    function refresh() {
        reload_table();
    }

    function reload_table() {
        table.ajax.reload(null, false);
    }

    function tambah() {
        $.ajax({
            url: "inputdata/create",
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    $('.viewmodal').html(response.sukses).show();
                    $('#modal-inpudata').modal('show');
                    $('.modal-title').text('Tambah Data');
                    $('.select2').select2({
                        theme: "bootstrap4"
                    });
                }
            },
            error: function(xhr, thrownError) {
                alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
            }
        });
    }

    function tambahfolder() {
        $.ajax({
            url: "inputfolder/create",
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    $('.viewmodal').html(response.sukses).show();
                    $('#modal-inputfolder').modal('show');
                    $('.modal-title').text('Tambah Folder');
                    $('.select2').select2({
                        theme: "bootstrap4"
                    });
                }
            },
            error: function(xhr, thrownError) {
                alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
            }
        });
    }

    function edit(id_menu) {
        $.ajax({
            type: "post",
            url: "inputdata/edit",
            data: {
                id_menu: id_menu
            },
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    $('.viewmodal').html(response.sukses).show();
                    $('#modal-inputdata').modal('show');
                    $('.modal-title').text('Edit Input Data');
                    $('.tombolSimpan').text('Update');
                    $('.select2').select2({
                        theme: "bootstrap4"
                    });
                }
            },
            error: function(xhr, thrownError) {
                alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
            }
        });
    }

    function hapus(id_menu, menu) {
        Swal.fire({
            title: 'Apakah anda yakin?',
            html: `<strong>${menu}</strong> akan dihapus`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#3085d6',
            confirmButtonText: 'Hapus',
            cancelButtonText: 'Batal',
            reverseButtons: false,
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type: "post",
                    url: "inputdata/delete",
                    data: {
                        id_menu: id_menu,
                    },
                    dataType: "json",
                    success: function(response) {
                        if (response.sukses) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Sukses',
                                html: `<strong>${menu}</strong> ${response.sukses}`,
                                //(menu ialah nama yg ada dicontroller btn hapus)
                            })
                            reload_table();
                        }
                    },
                    error: function(xhr, thrownError) {
                        alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                    }
                });
            } else {
                swal.fire("Batal", "Data Anda Tidak Jadi Dihapus", "warning");
            }
        })
    }
</script>
<?= $this->endsection() ?>
<!-- css -->
<?= $this->section('css') ?>
<!-- DataTables -->
<link rel="stylesheet" href="/assets/templated/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="/assets/templated/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<!-- SweetAlert2 -->
<link rel="stylesheet" href="/assets/templated/tambahan/sweetalert2/dist/sweetalert2.min.css">
<!-- Select2 -->
<link rel="stylesheet" href="/assets/templated/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="/assets/templated/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<?= $this->endSection() ?>

<!-- js -->
<?= $this->section('js') ?>
<!-- DataTables  & Plugins -->
<script src="/assets/templated/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/assets/templated/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/assets/templated/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/assets/templated/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- SweetAlert2 -->
<script src="/assets/templated/tambahan/sweetalert2/dist/sweetalert2.min.js"></script>
<!-- Select2 -->
<script src="/assets/templated/plugins/select2/js/select2.full.min.js"></script>
<?= $this->endSection() ?>