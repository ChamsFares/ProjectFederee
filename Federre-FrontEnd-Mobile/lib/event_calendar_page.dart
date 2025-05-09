import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EventCalendarPage extends StatefulWidget {
  @override
  _EventCalendarPageState createState() => _EventCalendarPageState();
}

class _EventCalendarPageState extends State<EventCalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  Map<DateTime, List<String>> _events = {
    DateTime.utc(2025, 5, 10): ["Team Meeting"],
    DateTime.utc(2025, 5, 15): ["Community Gathering"],
    DateTime.utc(2025, 5, 22): ["Workshop"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Event Calendar")),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            calendarFormat: _calendarFormat,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: _events.containsKey(_selectedDay.toUtc())
                  ? _events[_selectedDay.toUtc()]!
                      .map((event) => ListTile(title: Text(event)))
                      .toList()
                  : [ListTile(title: Text("No events on this day"))],
            ),
          ),
        ],
      ),
    );
  }
}
