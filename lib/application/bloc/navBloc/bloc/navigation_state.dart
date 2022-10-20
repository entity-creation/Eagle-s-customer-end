part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  NavigationState copyWith({required int newIndex});
}

class BottomNavigationState extends NavigationState {
  int newIndex;
  BottomNavigationState({required this.newIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [newIndex];

  BottomNavigationState copyWith({required int newIndex}) {
    return BottomNavigationState(newIndex: newIndex);
  }
}
