
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Profile'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),

        body: Column(
          children: [

            // Profile Container
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Student Profile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),

            // Student Details
            Text(
              'Raj',
              style: TextStyle(fontSize: 22),
            ),

            Text('Computer Science and Engineering'),

            SizedBox(height: 15),

            // Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 30),
                Icon(Icons.person, size: 30),
                Icon(Icons.settings, size: 30),
              ],
            ),

            SizedBox(height: 15),

            // Course Card
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Flutter'),
                subtitle: Text('Mobile Application Development'),
              ),
            ),

            // Subjects Heading
            Text(
              'Subjects',
              style: TextStyle(fontSize: 20),
            ),

            // Subject List
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Flutter'),
                  ),

                  ListTile(
                    leading: Icon(Icons.cloud),
                    title: Text('Cloud Computing'),
                  ),

                  ListTile(
                    leading: Icon(Icons.code),
                    title: Text('Programming'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
