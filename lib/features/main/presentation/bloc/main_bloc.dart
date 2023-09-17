

import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<SetBottomEvent>((SetBottomEvent event,Emitter<MainState> emit) {
      emit(state.copyWith(bottomMenu: event.menu));
    });
  }
}
