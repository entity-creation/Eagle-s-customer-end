part of 'navigation_bloc.dart';

// abstract class NavigationState extends Equatable {
//   const NavigationState();

//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();
// }

class BottomNavigationState extends Equatable {
  int newIndex;
  BottomNavigationState({required this.newIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [newIndex];
}
