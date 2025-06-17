import 'package:flutter/material.dart';
import 'package:flutter_gantt/flutter_gantt.dart';

void main() {
  runApp(const TimeChartExampleApp());
}

class TimeChartExampleApp extends StatelessWidget {
  const TimeChartExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gantt Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('TimeChart Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TimeChart(
            entries: [
              Entry(
                label: 'Phase 1',
                start: DateTime(2025, 1, 1),
                end: DateTime(2025, 1, 10),
                color: Colors.blue,
              ),
              Entry(
                label: 'Phase 2',
                start: DateTime(2025, 1, 5),
                end: DateTime(2025, 1, 20),
                color: Colors.green,
              ),
              Entry(
                label: 'Review',
                start: DateTime(2025, 1, 18),
                end: DateTime(2025, 1, 25),
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
