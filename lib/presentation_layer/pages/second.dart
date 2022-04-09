import 'package:bloc_example/busniesslogic_layer/secoand_bloc.dart';
import 'package:bloc_example/presentation_layer/pages/compoents/secoandComponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/todo_repository.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secoand"),
      ),
      body: SafeArea(
        child:BlocProvider(
          create: (context) => SecoandBloc(
              RepositoryProvider.of<TodoRepositiory>(context),
          )..add(SecoandApiCallEvent()),
          child:SecoandComponents(),

        ),
      ),
    );
  }
}
