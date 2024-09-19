import 'package:equatable/equatable.dart';

abstract class BottomBarEvent extends Equatable {
  const BottomBarEvent();

  @override
  List<Object> get props => [];
}

class BottomBarTabChanged extends BottomBarEvent {
  final int index;

  const BottomBarTabChanged(this.index);

  @override
  List<Object> get props => [index];
}
