import 'dart:html';

abstract class Name {
  abstract final String name;

  const Name();
}

class FirstName extends Name {
  @override
  final String name;

  const FirstName({required this.name});
}

class LastName extends Name {
  @override
  final String name;

  const LastName({required this.name});
}
