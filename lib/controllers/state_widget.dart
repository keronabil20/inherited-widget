import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class Inherited_widget extends InheritedWidget {
  final int counter;

  const Inherited_widget({
    Key? key,
    required super.child,
    required this.counter,
  }) : super(key: key);


  @override
  bool updateShouldNotify(covariant Inherited_widget oldWidget) =>
      oldWidget.counter != counter;
}
