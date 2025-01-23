<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use App\Models\User;

class Controller extends BaseController
{
    public function test() {

        $data = User::get();
        return json_encode($data);
    }
}
