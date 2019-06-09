@extends('layouts.app')

@section('content')

                <div class="panel panel-default">
                    <div class="panel-heading">Upload File</div>

                    <div class="panel-body">
                        
                        <form action="{{route('upload.save')}}" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <input type="text" name="title" id="title" placeholder="Enter Title" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="author" id="author" placeholder="Enter Author" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <textarea name="info" class="form-control" id="info" placeholder="Some info on Book" required></textarea>
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="category" required>
                                    @if (count($allcatagories) > 0)
                                        @foreach($allcatagories as $category)
                                            <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        @endif
                                </select>
                             </div>
                            <div class="form-group">
                                <label style="margin-left:250px">Book cover image</label>
                                <input type="file" name="image" id="image" class="form-control" required/>
                            </div>
                            <div class="form-group">
                                <label style="margin-left:250px">upload Book</label>
                                <input type="file" name="book" id="book" class="form-control"  required/>
                            </div>
                            <div class="form-group">
                               <button type="submit" name="uplaod" class="btn btn-primary btn-block upload">Upload Book</button>
                            </div>
                        </form>
                    </div>
                </div>

@endsection