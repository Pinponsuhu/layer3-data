<?php

namespace App\Http\Controllers;

use App\Imports\IssueImport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Excel;
use Maatwebsite\Excel\Facades\Excel as FacadesExcel;

class NavigatorController extends Controller
{

    public function login(){
        return view('welcome');
    }
    public function index(Request $request){
        $excel = FacadesExcel::import(new IssueImport, $request->file('file'));
    }
}
