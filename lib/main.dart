
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Student Profile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),

            const Text(
              'Raj',
              style: TextStyle(fontSize: 22),
            ),

            const Text('Computer Science and Engineering'),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 30),
                Icon(Icons.person, size: 30),
                Icon(Icons.settings, size: 30),
              ],
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Flutter'),
                subtitle: const Text(
                  'Mobile Application Development',
                ),
              ),
            ),

            const Text(
              'Subjects',
              style: TextStyle(fontSize: 20),
            ),

            Expanded(
              child: ListView(
                children: const [
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
