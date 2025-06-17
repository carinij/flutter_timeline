import 'package:flutter/material.dart';
import 'models/entry.dart';

class TimeChart extends StatelessWidget {
  final List<Entry> entries;

  const TimeChart({super.key, required this.entries});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: entries.map((entry) => Text(entry.label)).toList(),
    );
  }
}
