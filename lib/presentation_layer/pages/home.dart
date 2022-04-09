import 'package:bloc_example/data/api_services/api_services.dart';
import 'package:bloc_example/data/repository/todo_repository.dart';
import 'package:bloc_example/presentation_layer/pages/compoents/homecomponents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../busniesslogic_layer/homebloc/home_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HomeBloc(
      RepositoryProvider.of<TodoRepositiory>(context)
    )..add(LoadApiEvent()),
    child: HomeComponents(),);
  }
}
