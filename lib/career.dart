
import 'package:flutter/material.dart';


@immutable
class Career {
  const Career({
    required this.description,
    required this.name,
  });

  final String description;
  final String name;

  @override
  String toString() {
    return '$name, $description';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Career && other.name == name && other.description == description;
  }

  @override
  int get hashCode => Object.hash(description, name);
}