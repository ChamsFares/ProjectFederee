import 'package:flutter/material.dart';
import 'discussion_page.dart';
import 'collaboration_page.dart';
import 'about_page.dart';
import 'profile_page.dart';
import 'event_calendar_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _postController = TextEditingController();
  List<Map<String, String>> posts = [];

  void _addPost() {
    if (_postController.text.trim().isNotEmpty) {
      setState(() {
        posts.insert(
            0, {"name": "User Name", "content": _postController.text.trim()});
      });
      _postController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _postController,
                    decoration: InputDecoration(
                      hintText: "Write something...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addPost,
                  child: Text("Post"),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostWidget(
                  userName: posts[index]["name"]!,
                  content: posts[index]["content"]!,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          if (index == 1) {
            // Event button
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventCalendarPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CollaborationPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscussionPage()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          } else if (index == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage(userName: "User Name")),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(
              icon: Icon(Icons.group), label: 'Collaboration'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String userName;
  final String content;

  PostWidget({required this.userName, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(userName: userName),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(userName[0], style: TextStyle(color: Colors.white)),
              ),
            ),
            title: Text(userName),
            subtitle: Text(content),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
              IconButton(icon: Icon(Icons.comment), onPressed: () {}),
              IconButton(icon: Icon(Icons.send), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
