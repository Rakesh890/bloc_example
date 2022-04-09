part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  HomeEvent();
}

class LoadApiEvent extends HomeEvent {
  // TODO: implement props
  List<Object?> get props => [];
}
