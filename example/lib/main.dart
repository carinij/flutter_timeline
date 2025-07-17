import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';

void main() {
  runApp(const TimeChartExampleApp());
}

class TimeChartExampleApp extends StatelessWidget {
  const TimeChartExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final entries = [
      Entry(
        id: 'phase_1',
        title: 'Phase 1',
        start: DateTime(2025, 1, 1),
        end: DateTime(2025, 1, 10),
        color: Colors.blue,
      ),
      Entry(
        id: 'phase_2',
        title: 'Phase 2',
        start: DateTime(2025, 1, 5),
        end: DateTime(2025, 1, 20),
        color: Colors.green,
      ),
      Entry(
        id: 'review',
        title: 'Review',
        start: DateTime(2025, 1, 18),
        end: DateTime(2025, 1, 25),
        color: Colors.orange,
      ),
    ];

    final chart = Chart(
      title: 'Project Overview',
      entries: entries,
      timeUnit: TimeUnit.days,
      defaultEntryColor: Colors.grey.shade400,
    );

    return MaterialApp(
      title: 'Flutter Gantt Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('TimeChart Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TimeChart(chart: chart),
        ),
      ),
    );
  }
}
