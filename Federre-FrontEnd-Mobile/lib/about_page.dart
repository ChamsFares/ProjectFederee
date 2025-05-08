import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About InterClub")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "InterClub",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "InterClub is a dynamic, forward-thinking organization dedicated to uniting fans and empowering communities through innovation and decentralization. "
              "With a strong commitment to secure and transparent solutions, InterClub continuously embraces breakthrough technologies that enhance collaboration among its members. "
              "Our culture of continuous improvement, trust, and integrity drives every initiative, ensuring that every project not only meets modern technological standards but also strengthens the bond among our global community.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Back to Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
