<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Book;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    { 
       
    } 

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
          $books= Book::all();
        return view('welcome')->with('books',$books);
        
    }
}
