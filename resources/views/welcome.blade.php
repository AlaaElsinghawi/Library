<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Library</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/styles.css">

        <!-- Styles -->
         <script src="{{ asset('js/app.js') }}" defer></script>
         <link href="{{ asset('css/app.css') }}" rel="stylesheet">
          <link rel="stylesheet" type="text/css" href="css/styles.css">

       
    </head>
    <body>
        <section class="slider">
        <h2>Download & reading </h2>
        </section>
        <section class='info'>
            <div class="container">

                <div class="row">
                @foreach($books as $book)
                <div class="col-md-3 book">
                  <a href="{{'book/'.$book->id}}"><img src="{{asset('storage/images/'.$book->image)}}" class="img-responsive"/></a>
                  <br>
                  <span>{{$book->title}}</span>
                  <br>
                 <a href="{{'book/'.$book->id}}" class="btn btn-primary">Read More</a>
                  </div>

                @endforeach 
                
            </div>
        </section>
        
    </body>
</html>
