import 'package:flutter/material.dart';

enum Priority {
  normal(
    description: "Normal",
    color: Colors.green,
  ),
  high(
    description: "Alta",
    color: Colors.amber,
  ),
  emergency(
    description: "Emergência",
    color: Colors.red
  );

  const Priority({
    required this.description,
    required this.color,
  });

  final String description;
  final MaterialColor color;
}
