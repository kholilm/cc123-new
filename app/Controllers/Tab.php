<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Tab extends BaseController
{
    public function index()
    {
        return view('tab/view_tab');
    }
}
