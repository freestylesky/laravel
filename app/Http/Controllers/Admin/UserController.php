<?php
/**
 * Created by PhpStorm.
 * User: wangxinyu
 * Date: 18/1/12
 * Time: 15:23
 */
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;


class UserController extends Controller{

    public function index(){


        return view('admin.user.index');

    }





}