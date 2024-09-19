import 'package:equatable/equatable.dart';

abstract class BottomBarState extends Equatable {
  const BottomBarState();

  @override
  List<Object> get props => [];
}

class BottomBarInitial extends BottomBarState {
  final int index;

  const BottomBarInitial({this.index = 0});

  @override
  List<Object> get props => [index];
}

class BottomBarTabLoaded extends BottomBarState {
  final int index;

  const BottomBarTabLoaded(this.index);

  @override
  List<Object> get props => [index];
}
