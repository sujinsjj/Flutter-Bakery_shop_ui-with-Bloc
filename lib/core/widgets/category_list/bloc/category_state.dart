part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class CategorySelected extends CategoryState {
  final int selectedIndex;

  const CategorySelected(this.selectedIndex);

  @override
  List<Object?> get props => [selectedIndex];
}
