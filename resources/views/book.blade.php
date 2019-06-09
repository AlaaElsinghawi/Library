
@extends('layouts.app')

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">Book name</div>

        <div class="panel-body">
            @if (count($books) > 0)
              @foreach($books as $book)
            <div class="row">
                <div class="col-md-3">
             <a href="{{'book/'.$book->id}}"><img src="{{asset('storage/images/'.$book->image)}}" class="img-responsive"/></a>
                </div>
                <!-- /.col-md-12 -->
                <div class="col-md-9 text-center">       
                    <h2>{{$book->title}}</h2>
                     <p>{{$book->info}}</p>
                    <br/>
                    Author : {{$book->author}} <br/>
                    <a href="{{asset('storage/books/'.$book->bookfile)}}" class="btn btn-primary">Download</a>
                    <a href="{{route('book',$book->id)}}" class="btn btn-info">More info</a>
                </div>
                <!-- /.col-md-9 -->
            </div>
            @endforeach 
        </div>
    </div>
<hr> 
<hr>

    @else
  Error : not Book Found
    @endif
 @endsection
