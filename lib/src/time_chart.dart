import 'package:flutter/material.dart';
import 'models/chart.dart';
import 'models/entry.dart';

class TimeChart extends StatelessWidget {
  final Chart chart;

  const TimeChart({super.key, required this.chart});

  @override
  Widget build(BuildContext context) {
    final List<Entry> entries = List<Entry>.from(chart.entries);

    if (chart.sortEntriesByStart) {
      entries.sort((a, b) => a.start.compareTo(b.start));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (chart.title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              chart.title!,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ...entries.map((entry) => _buildEntryWidget(context, entry)),
      ],
    );
  }

  Widget _buildEntryWidget(BuildContext context, Entry entry) {
    if (entry.displayComponent != null) return entry.displayComponent!;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:
            entry.color ?? chart.defaultEntryColor ?? Colors.blueGrey.shade200,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(entry.title ?? entry.id),
    );
  }
}
