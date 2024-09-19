import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// Events
part 'category_event.dart';

// States
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategorySelected(0)) {
    on<SelectCategoryEvent>((event, emit) {
      emit(CategorySelected(event.selectedIndex));
    });
  }
}
