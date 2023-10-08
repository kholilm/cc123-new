<?php

namespace App\Commands;

use CodeIgniter\CLI\BaseCommand;
use CodeIgniter\CLI\CLI;

class View extends BaseCommand
{
    /**
     * The Command's Group
     *
     * @var string
     */
    protected $group = 'View';

    /**
     * The Command's Name
     *
     * @var string
     */
    protected $name = 'make:view';

    /**
     * The Command's Description
     *
     * @var string
     */
    protected $description = 'Membuat View';
    /**
     * Actually execute a command.
     *
     * @param array $params
     */
    public function run(array $params)
    {
        helper('filesystem');
        if (empty($params)) {
            echo "Nama view belum diisi mohon ulang kembali !";
            exit;
        } else {
            $namaFile = strtolower($params[0]);
            $namaFileBaru = APPPATH . '\Views/' . $namaFile . ".php";
            $fileKontenBaru = $this->file_structure($namaFile);

            if (file_exists($namaFileBaru)) {
                echo "view sudah ada mohon ulang kembali";
                exit;
            }
            if (!write_file($namaFileBaru, $fileKontenBaru)) {
                echo "View gagal dibuat";
            } else {
                echo "View berhasil dibuat !";
            }
            exit;
        }
    }
    private function file_structure()
    {
        return
            '';
    }
}
