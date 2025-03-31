import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Todo")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.green),
            title: Text(
              "Complete Flutter UI App challenge and upload it on GitHub",
            ),
            subtitle: Text("Thu 25m"),
            tileColor: Colors.green[100],
          ),
          SizedBox(height: 10),
          Text(
            "Remaining Tasks (24)",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          for (var task in [
            "Complete all the college assignments",
            "Buy watch for dad on Father's Day",
            "Complete the Case Study and send it to the professor",
            "My best Friend’s Birthday Party",
            "Help sister with her Calculus Homework",
          ])
            Card(
              child: ListTile(
                leading: Icon(Icons.radio_button_unchecked),
                title: Text(task),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
