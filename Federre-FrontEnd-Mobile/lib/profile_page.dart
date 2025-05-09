import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String userName;

  ProfilePage({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile of $userName")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
            ),
            SizedBox(height: 10),
            Text(
              userName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("0 Following | 0 Followers | 0 Likes",
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Follow"),
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              "$userName's Posts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(title: Text("Post 1")),
                  ListTile(title: Text("Post 2")),
                  ListTile(title: Text("Post 3")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
