import 'package:flutter/material.dart';

class EventDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Event Description")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Community Club Meetup",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("📅 Date: Saturday, June 15"),
            Text("📍 Location: City Park"),
            Text("🎯 Purpose: Fun activities and networking"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Back to Discussion"),
            ),
          ],
        ),
      ),
    );
  }
}
