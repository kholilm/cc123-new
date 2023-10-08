<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Showpdf extends BaseController
{
    function __construct()
    {
    }
    public function index()
    {
        $uri = $this->request->uri->getSegment(2);

        $tabelmenu = $this->db->table('tb_menu')->where('url', $uri)->get()->getRow();

        $data = [
            'datapdf' => $tabelmenu
        ];

        return  view('view_showpdf', $data);
    }
}
