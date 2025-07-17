import 'package:flutter/material.dart';
import 'entry.dart';
import 'time_unit.dart';

class Chart {
  final String? title;
  final List<Entry> entries;
  final DateTime? start;
  final DateTime? end;

  final int? rowsPerPage;
  final int? currentPage;
  final int? pageCount;

  final TimeUnit timeUnit;
  final int timeStep;
  final bool showGridLines;
  final bool sortEntriesByStart;
  final bool isInteractive;

  final double? rowHeight;
  final double? rowSpacing;
  final double? timelineHeight;
  final Color? defaultEntryColor;
  final Duration? timezoneOffset;

  Chart({
    required this.entries,
    this.title,
    this.start,
    this.end,
    this.rowsPerPage,
    this.currentPage,
    this.pageCount,
    this.timeUnit = TimeUnit.days,
    this.timeStep = 1,
    this.showGridLines = true,
    this.sortEntriesByStart = true,
    this.isInteractive = false,
    this.rowHeight,
    this.rowSpacing,
    this.timelineHeight,
    this.defaultEntryColor,
    this.timezoneOffset,
  });

  DateTime get effectiveStart =>
      start ?? entries.map((e) => e.start).reduce((a, b) => a.isBefore(b) ? a : b);

  DateTime get effectiveEnd =>
      end ?? entries.map((e) => e.end).reduce((a, b) => a.isAfter(b) ? a : b);
}
