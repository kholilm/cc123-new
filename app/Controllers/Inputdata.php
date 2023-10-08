<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Inputdata extends BaseController
{
    function __construct()
    {
        $this->jenismenu = ['nav-bar', 'side-bar'];
    }

    public function index()
    {
        $data = [
            'title'            => 'Menu'
        ];
        return view('view_input', $data);
    }
    public function list()
    {
        $list = $this->inputdata->get_datatables();
        $data = [];
        $no = @$_POST['start'];

        foreach ($list as $r) {
            $no++;
            $row = [];
            $row[] = $no;
            $row[] = $r->menu;
            // $row[] = $r->menuid;
            $row[] = $r->url;
            // $row[] = $r->controller;
            $row[] = $r->jenis_menu;
            $row[] = $r->icon;
            $row[] = $r->sort_menu;
            if ($r->is_active == 1)
                $row[] = '<style="font-size: small">AKTIF';
            else
                $row[] = '<style="font-size: small">NON AKTIF';
            $row[] = '
                    <a class="btn btn-warning btn-xs" href="javascript:void(0)" title="Edit" onclick="edit(' . "'" . $r->id_menu . "'" . ')">Edit</a>
                    <a class="btn btn-danger btn-xs" href="javascript:void(0)" title="Hapus" onclick="hapus(' . "'" . $r->id_menu . "'" . ',' . "'" . $r->menu . "'" . ')">Hapus</a>
                    ';
            $data[] = $row;
        }
        $output = [
            'draw' => @$_POST['draw'],
            'recordsTotal' => $this->inputdata->count_all(),
            'recordsFiltered' => $this->inputdata->count_filtered(),
            'data' => $data,
        ];
        //output to json format
        echo json_encode($output);
    }
    public function create()
    {
        if ($this->request->isAJAX()) {
            $data = [
                'jenismenu' => $this->jenismenu,
                'datamenu'  => $this->inputdata->getlistmenu(),
            ];
            $pesan = [
                'sukses'    => view('create/create_inputdata', $data),
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/input-data');
        }
    }
    public function save()
    {
        //isajax buat securtiy
        if ($this->request->isAJAX()) {
            $this->_validate('save');
            $filePdf = $this->request->getFile('path_pdf');
            if ($filePdf->getError() == 4) {
                $namaFilePdf = 'default.pdf';
            } else {
                $namaFilePdf = $this->request->getPost('menu') . ' ' . $filePdf->getRandomName();
                $filePdf->move('assets/file_pdf/', $namaFilePdf);
            }
            $data = [
                'menu' => $this->request->getPost('menu'),
                'url' => $this->request->getPost('url'),
                // 'controller' => $this->request->getPost('controller'),
                'menu_id' => $this->request->getPost('menu_id'),
                'jenis_menu' => $this->request->getPost('jenis_menu'),
                'icon' => $this->request->getPost('icon'),
                'path_pdf' => $namaFilePdf,
                'sort_menu' => $this->request->getPost('sort_menu'),
                'is_active' => $this->request->getPost('is_active'),

            ];
            $this->inputdata->insert($data);
            $pesan = [
                'sukses'    => 'Data Berhasil Disimpan'
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/input-data');
        }
    }
    public function edit()
    {
        if ($this->request->isAJAX()) {
            $id = $this->request->getPost('id_menu');
            $data = [
                'data' => $this->inputdata->find($id),
                'jenismenu' => $this->jenismenu,
                'datamenu'  => $this->inputdata->getlistmenu(),
            ];
            $pesan = [
                'sukses'    => view('edit/edit_inputdata', $data)
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/input-data');
        }
    }
    public function update()
    {
        if ($this->request->isAJAX()) {
            $this->_validate('update');
            $filePdf = $this->request->getFile('path_pdf');
            if ($filePdf->getError() == 4) {
                $namaFilePdf = $this->request->getPost('pdflama');
            } else {
                $namaFilePdf = $this->request->getPost('menu') . ' ' . $filePdf->getRandomName();
                $filePdfLama = $this->request->getPost('pdflama');
                $filePdf->move('assets/file_pdf/', $namaFilePdf);
                if ($filePdfLama != 'default.pdf') {
                    unlink('assets/file_pdf/' . $this->request->getPost('pdflama'));
                }
            }
            $data = [
                'menu' => $this->request->getPost('menu'),
                'url' => $this->request->getPost('url'),
                // 'controller' => $this->request->getPost('controller'),
                'menu_id' => $this->request->getPost('menu_id'),
                'jenis_menu' => $this->request->getPost('jenis_menu'),
                'icon' => $this->request->getPost('icon'),
                'path_pdf' => $namaFilePdf,
                'sort_menu' => $this->request->getPost('sort_menu'),
                'is_active' => $this->request->getPost('is_active'),

            ];
            $id =  $this->request->getPost('id');
            $this->inputdata->update($id, $data);
            $pesan = [
                'sukses'    => 'Data Berhasil Diubah'
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/input-data');
        }
    }
    public function delete()
    {
        if ($this->request->isAJAX()) {
            $id = $this->request->getPost('id_menu');
            $filepdf = $this->inputdata->find($id);

            if ($filepdf->path_pdf != 'default.pdf') {
                unlink('assets/file_pdf/' . $filepdf->path_pdf);
            }
            $this->inputdata->delete($id);
            $pesan = [
                'sukses'    => 'berhasil dihapus',
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/input-data');
        }
    }

    public function _validate($method)
    {
        if (!$this->validate($this->_getRulesValidation($method))) {
            $validation = \Config\Services::validation();

            $data = [];
            $data['error_string'] = [];
            $data['inputerror'] = [];
            $data['status'] = TRUE;

            if ($validation->hasError('menu')) {
                $data['inputerror'][] = 'menu';
                $data['error_string'][] = $validation->getError('menu');
                $data['status'] = FALSE;
            }
            if ($validation->hasError('url')) {
                $data['inputerror'][] = 'url';
                $data['error_string'][] = $validation->getError('url');
                $data['status'] = FALSE;
            }
            if ($validation->hasError('controller')) {
                $data['inputerror'][] = 'controller';
                $data['error_string'][] = $validation->getError('controller');
                $data['status'] = FALSE;
            }
            if ($data['status'] === FALSE) {
                echo json_encode($data);
                exit();
            }
        }
    }
    public function _getRulesValidation($method = null)
    {
        if ($method == 'save') {
            $menu         = 'required';
            $url          = 'required|is_unique[tb_menu.url]';
        } else {
            $menu         = 'required';
            $url          = 'required|is_unique[tb_menu.url,id_menu,{id}]';
        }
        $rulesValidation = [
            'menu' => [
                'rules' => $menu,
                'errors' => [
                    'required' => 'Menu harus diisi'
                ]
            ],
            'url' => [
                'rules' => $url,
                'errors' => [
                    'required' => 'Url harus diisi',
                    'is_unique' => 'Url sudah ada'
                ]
            ],
        ];
        return $rulesValidation;
    }
}
