import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_bar_event.dart';
import 'bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(const BottomBarInitial()) {
    on<BottomBarTabChanged>((event, emit) {
      emit(BottomBarTabLoaded(event.index));
    });
  }
}
