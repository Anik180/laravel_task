<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\ProductsExport;
use App\Imports\ProductsImport;
use Maatwebsite\Excel\Facades\Excel;
class ExcelController extends Controller
{
    public function import(){
        Excel::import(new ProductsImport, request()->file('file'));
        return back();
    }

    public function export(){
       return Excel::download(new ProductsExport, 'products.xlsx');
    }
}
