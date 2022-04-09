import 'dart:convert';
import 'package:bloc_example/data/api_services/api_services.dart';
import 'package:bloc_example/data/model/todo.dart';
import 'package:bloc_example/utils/api.dart';
import '../model/todo_list.dart';

class TodoRepositiory
{
   ApiServices apiServices= ApiServices();
   Todo todo = Todo();
  var response;
  Future getTodoData() async {
    try{
      await apiServices.executeGet(Api.todosUrl).then((value) => {
        todo = Todo.fromJson(value),
      });
    }catch(err){
      return Exception(err.toString());
    }
    return todo;
  }

  Future getTodoList()async{
    try{
      await apiServices.executeGet(Api.todoUrlList).then((value) => {
        response = value,
      });
    }catch(err){
      return Exception(err.toString());
    }
    return response;
  }
}
