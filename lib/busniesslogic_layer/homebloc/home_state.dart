part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable{
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState
{
  final Todo todo;
  HomeLoadedState({required this.todo});
  @override
  // TODO: implement props
  List<Object?> get props => [todo];

}
