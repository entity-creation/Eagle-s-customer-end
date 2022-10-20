part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class changeIndex extends NavigationEvent {
  final int newIndex;
  const changeIndex({required this.newIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [newIndex];
}
