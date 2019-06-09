  <p class="view">View Comment</p>
                @if(count($book->comments) >0)
                @foreach($book->comments as $a) 
                  <div class="content">
                  	<h3>{{$a->user->name}}</h3>
                  <span>{{$a->content}}</span>
               
                  </div>

                 
              
             
                 @endforeach
                 @endif

                <!-- /.col-md-9 -->
      <hr>

