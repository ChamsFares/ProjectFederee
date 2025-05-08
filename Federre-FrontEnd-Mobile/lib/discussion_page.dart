import 'package:flutter/material.dart';
import 'event_description_page.dart';
import 'event_members_page.dart';

class DiscussionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Discussion")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue),
            title: Text("Community Club"),
            subtitle: Text("56 members"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text("Chat")),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventDescriptionPage()),
                  );
                },
                child: Text("Event"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventMembersPage()),
                  );
                },
                child: Text("Members"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Recent Activity",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ...[
            "Hey everyone, any updates on the community event project?",
            "Yes, we have secured funding for the initial supplies! Meeting next week to start.",
            "That's fantastic news, Count me in for the event day.",
            "Awesome! Excited to see this project come to life."
          ].map((message) => ListTile(
                leading: Icon(Icons.message),
                title: Text(message),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Start typing your message...")),
          );
        },
        child: Icon(Icons.chat), // Set to a proper message icon
        backgroundColor: Colors.blue,
      ),
    );
  }
}
