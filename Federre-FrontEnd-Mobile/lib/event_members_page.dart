import 'package:flutter/material.dart';

class EventMembersPage extends StatelessWidget {
  final List<String> members = ["Alice", "Bob", "Charlie", "David", "Eve"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Event Members")),
      body: ListView(
        children: members
            .map((member) => ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.green),
                  title: Text(member),
                ))
            .toList(),
      ),
    );
  }
}
