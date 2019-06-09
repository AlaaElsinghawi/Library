

        <!-- /.box-header -->
        <div class="box-body"> 
           <form action="{{route('addcomment',$book->id)}}" method="post">
               {{csrf_field()}}
               <div class="form-group">
                   <input type="text" name="comment" id="name" class="form-control text" placeholder="Enter Your Comment">
               </div>
               <div class="form-group">
                  <button type="submit" name="add" class="btn btn-primary but">Add Comment</button>
               </div>
           </form>
        </div>
        <!-- /.box-body --> 
   
    
