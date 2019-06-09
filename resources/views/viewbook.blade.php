@extends('layouts.app')

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading"></div>

        <div class="panel-body">
            <div class="row">
                <div class="col-md-3">
                    <img src="{{asset('storage/images/'.$book->image)}}" class="img-responsive"/>
                     <p class='desc'>{{$book->info}}...
                         <a href="">Read More</a>
                         </p>
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-9 text-center">       
                    <h2>{{$book->title}}</h2>
                      
                        
                         <br/> 
                         Author : {{$book->author}} <br/>
                   
                    <a href="{{asset('storage/books/'.$book->bookfile)}}" class="btn btn-primary">Download</a>
                    
                </div> 
                <!-- /.col-md-9 -->
            </div>
        
        </div>
    </div>
    <hr>

  @include('viewcomment')

  @include('Comment')
    
 @endsection