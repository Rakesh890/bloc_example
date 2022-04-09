part of 'secoand_bloc.dart';

@immutable
abstract class SecoandState extends Equatable {}

class SecoandLoadingState extends SecoandState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class  SecoandLoddedData extends SecoandState{

  List<Todo> todoList = [];
  SecoandLoddedData({required this.todoList});
  @override
  // TODO: implement props
  List<Object?> get props => [todoList];
}

class SeconadLoddedError extends SecoandState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ClickdListItems extends SecoandState{

  final todo;
  ClickdListItems(this.todo);
  @override
  // TODO: implement props
  List<Object?> get props => [todo];

}
