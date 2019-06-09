@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content')

    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Categoriess</h3>
            <div class="box-tools pull-right">
                <!-- Buttons, labels, and many other things can be placed here! -->
                <!-- Here is a label for example -->
             <a class="btn btn-primary" href="{{url('admin/categories')}}">Add Category</a>
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table class="table table-bordered">
                @if(count($categories) > 0)
                <thead>
                <tr>
                    <td>#</td>
                    <td>Name</td>

                </tr>
                </thead>
                
                    @foreach($categories as $category)
                        <tr>
                            <td>{{$category->id}}</td>
                            <td>{{$category->name}}</td>
                        </tr>
                    @endforeach
                    @else Error: not Found Catagories
                @endif
            </table>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

@stop
