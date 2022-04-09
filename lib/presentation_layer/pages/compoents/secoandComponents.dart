import 'package:bloc_example/busniesslogic_layer/secoand_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecoandComponents extends StatelessWidget {
  const SecoandComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocBuilder<SecoandBloc,SecoandState>(builder: (context, state){
        if(state is SecoandLoadingState){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if(state is SecoandLoddedData){
          return _buildListViewBuilder(state);
        }else if(state is SeconadLoddedError){
          return Center(child: Text("Something Went Wrong Here"));
        }else{
          return Container();
        }
      }),
    );
  }

  Widget _buildListViewBuilder(SecoandLoddedData state)
  {
    return ListView.builder(
        itemCount: state.todoList.length,
        itemBuilder: (context,int index){
      return ListTile(
        title: Text("${state.todoList[index].title}"),
      );
    });
  }
}
