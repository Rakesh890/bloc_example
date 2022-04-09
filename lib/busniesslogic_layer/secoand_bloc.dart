import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/model/todo.dart';
import 'package:bloc_example/data/model/todo_list.dart';
import 'package:bloc_example/data/repository/todo_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
part 'secoand_event.dart';
part 'secoand_state.dart';

class SecoandBloc extends Bloc<SecoandEvent, SecoandState>
{
  final TodoRepositiory todoRepositiory;
  List<Todo>todoList = [];
  Todo todo = Todo();
  SecoandBloc(this.todoRepositiory) : super(SecoandLoadingState()) {
    on<SecoandEvent>((event, emit) async {
      // TODO: implement event handler
      await todoRepositiory.getTodoList().then((value) =>
      {
        for(var json in value){
          print(json),
          todo = Todo.fromJson(json),
          print(json),
          todoList.add(todo),
        },
         print("Received Data Form Api ${todoList.toString()}"),
         emit(SecoandLoddedData(todoList: todoList)),
      });
    });
  }



}
