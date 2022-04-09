import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/api_services/api_services.dart';
import 'package:bloc_example/data/model/todo.dart';
import 'package:bloc_example/data/repository/todo_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>
{
  final TodoRepositiory todoRepositiory;
  HomeBloc(this.todoRepositiory) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      // TODO: implement event handler
      ///add our stuff
      await todoRepositiory.getTodoData().then((value) => {
        print("Received Data ${value.toString()}"),
        emit(HomeLoadedState(todo: value)),
      });

    });
  }

}
