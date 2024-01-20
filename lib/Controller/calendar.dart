import 'package:flutter/material.dart';

class Event {
  DateTime date;
  String title;
  TimeOfDay start;
  TimeOfDay end;

  // Constructor to create Event objects
  Event(this.date, this.title, this.start, this.end);
}
