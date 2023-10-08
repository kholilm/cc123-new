<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Inputfolder extends BaseController
{
    public function index()
    {
        if ($this->request->isAJAX()) {
            $this->_validate();
            if ($this->request->getPost('foldername')) {
                $foldername = $this->request->getPost('foldername');
                if (!is_dir($foldername)) mkdir('assets/file_pdf/' . $foldername);
                foreach ($_FILES['files']['name'] as $i => $name) {
                    if (strlen($_FILES['files']['name'][$i]) > 1) {
                        move_uploaded_file($_FILES['files']['tmp_name'][$i],  'assets/file_pdf/' . $foldername . '/' . $name);
                    }
                }
            }
            $pesan = [
                'sukses'    => 'Folder Berhasil Disimpan'
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/inputfolder ');
        }
    }

    public function create()
    {
        if ($this->request->isAJAX()) {

            $pesan = [
                'sukses'    => view('create/create_inputfolder'),
            ];
            echo json_encode($pesan);
        } else {
            return redirect()->to('/inputfolder ');
        }
    }

    public function save()
    {
        if (isset($_POST['upload'])) {
            if ($_POST['foldername'] != "") {
                $foldername = $_POST['foldername'];
                if (!is_dir($foldername)) mkdir('assets/file_pdf' . $foldername);
                foreach ($_FILES['files']['name'] as $i => $name) {
                    if (strlen($_FILES['files']['name'][$i]) > 1) {
                        move_uploaded_file($_FILES['files']['tmp_name'][$i],  'assets/file_pdf' . $foldername . '/' . $name);
                    }
                }
                echo "Folder is successfully uploaded";
            } else
                echo "Upload folder name is empty";
        }
    }
    public function _validate($method = null)
    {
        if (!$this->validate($this->_getRulesValidation($method))) {
            $validation = \Config\Services::validation();

            $data = [];
            $data['error_string'] = [];
            $data['inputerror'] = [];
            $data['status'] = TRUE;

            if ($validation->hasError('foldername')) {
                $data['inputerror'][] = 'foldername';
                $data['error_string'][] = $validation->getError('foldername');
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
        $rulesValidation = [
            'foldername' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama harus diisi'
                ]
            ],
        ];
        return $rulesValidation;
    }
}
