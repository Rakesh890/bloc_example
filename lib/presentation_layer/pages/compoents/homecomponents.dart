import 'package:bloc_example/busniesslogic_layer/homebloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial)
            return Center(child: CircularProgressIndicator());
          else if (state is HomeLoadedState)
            return _buildTodoDetails(state,context);
          else
            return Text("Something Went Wrong");
        },
      ),
    );
  }

  Widget _buildTodoDetails(HomeLoadedState state,BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("My Todo : ${state.todo.userId}"),
        Text("ID : ${state.todo.id}"),
        Text("Title : ${state.todo.title}"),
        Text("Completed : ${state.todo.completed}"),
        RaisedButton(onPressed: (){
          Navigator.of(context).pushNamed(
            '/second',
          );
        },child:Text("Move To Another Screen"),),
      ],
    );
  }
}
