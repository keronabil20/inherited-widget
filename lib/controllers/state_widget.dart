import 'package:flutter/material.dart';

/// Custom InheritedWidget to share a counter value with descendant widgets
class Inherited_widget extends InheritedWidget {
  /// Counter value to be accessed by descendants
  final int counter;

  /// Constructor for Inherited_widget
  const Inherited_widget({
    Key? key,
    required super.child, // Child widget that will inherit this data
    required this.counter, // Required counter value to be shared
  }) : super(key: key);

  /// Determines whether widgets that depend on this should rebuild
  /// Only returns true if the counter value has changed
  @override
  bool updateShouldNotify(covariant Inherited_widget oldWidget) =>
      oldWidget.counter != counter;
}
