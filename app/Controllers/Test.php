<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Test extends BaseController
{
    public function index()
    {
        return view('view_test');
    }
}
