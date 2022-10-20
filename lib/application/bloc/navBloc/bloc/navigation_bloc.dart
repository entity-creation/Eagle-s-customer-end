import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(BottomNavigationState(newIndex: 0)) {
    on<changeIndex>(_onChangeIndex);
  }

  FutureOr<void> _onChangeIndex(
      changeIndex event, Emitter<NavigationState> emit) {
    emit(state.copyWith(newIndex: event.newIndex));
  }
}
