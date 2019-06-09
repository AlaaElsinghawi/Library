<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class AdminCategoryController extends Controller
{
 public function index()
 {
 	$categories = Category::all();
   return view('admin.categories')->with('categories',$categories);
 	
 }   
 public function create()
 {
   
return view('admin.createcategory');
 }
 public function store(Request $request)
    {
        $this->validate($request,[
            'name'=>'required'
        ]);
        $category = new Category();
        $category->name = $request->input('name');
        $category->save();
        return redirect(url('admin/categories'))->with('msg','Category Added');
    }

 }
