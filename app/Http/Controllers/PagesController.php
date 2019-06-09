<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use App\Category;
use App\Comment;


class PagesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except('index','viewCategory','viewBook');
    }
    public function index(){ 
        $books= Book::latest()->paginate(5);
        return view('book')->with('books',$books);
    } 
    public function viewCategory($id){
        $category = Category::find($id);
        $books = $category->books;
        return view('viewcategory')->with(['books'=>$books,'category'=>$category]);
    }
    public function viewBook($id){
        $book = Book::findorfail($id);
        return view('viewbook')->with('book',$book);
    }
    public function addComment(Request $request ,$id){
        $this->validate($request,[
            'comment'=>'required|max:200'
        ]);                  
        $coment = new Comment();
        $coment->content = $request->input('comment');
        $coment->user_id = auth()->user()->id;
        $coment->book_id =$id;
        $coment->save();


        return redirect()->back(); 

    }
}


