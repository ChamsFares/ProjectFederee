import 'package:flutter/material.dart';

class CollaborationPage extends StatefulWidget {
  @override
  _CollaborationPageState createState() => _CollaborationPageState();
}

class _CollaborationPageState extends State<CollaborationPage> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Group Meetup Poll")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Where should we go for our next group meetup?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ...["Option 1", "Option 2", "Option 3"].map((option) => ListTile(
                leading: Radio<String>(
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                ),
                title: Text(option),
              )),
          SizedBox(height: 20),
          Text(
            "Poll Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListTile(title: Text("📅 Poll End Time: Tomorrow at 5:00 PM")),
          ListTile(title: Text("📊 Total Votes: 0")),
          ListTile(
              title: Text(
                  "✅ Your Vote: ${selectedOption.isNotEmpty ? selectedOption : 'No selection yet'}")),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: selectedOption.isNotEmpty
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text("You voted for: $selectedOption")),
                      );
                    }
                  : null,
              child: Text("View Results"),
            ),
          ),
        ],
      ),
    );
  }
}
