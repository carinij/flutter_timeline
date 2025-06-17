import 'package:flutter/material.dart';

class Entry {
  final String label;
  final DateTime start;
  final DateTime end;
  final Color? color;

  Entry({
    required this.label,
    required this.start,
    required this.end,
    this.color,
  });
}
