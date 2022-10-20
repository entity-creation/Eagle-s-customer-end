import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit(int initialState) : super(initialState);

  void changeIndex(int index) => emit(index);
}
