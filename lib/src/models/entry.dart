import 'package:flutter/material.dart';

class Entry {
  final String id;
  final String? title;
  final String? description;
  final DateTime start;
  final DateTime end;
  final Color? color;
  final int? row;
  final Widget? displayComponent;
  final Uri? link;

  Entry({
    required this.id,
    this.title,
    this.description,
    required this.start,
    required this.end,
    this.color,
    this.row,
    this.displayComponent,
    this.link,
  }) : assert(end.isAfter(start), 'Entry end time must be after start time');
}
