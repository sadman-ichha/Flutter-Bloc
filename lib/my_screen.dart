// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

final TextEditingController controller = TextEditingController();
String name = '';

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("My Screen Build");

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Screen"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("This is My Page $name"),
            SizedBox(height: 20),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                name = controller.text;
                setState(() {});
                controller.clear();
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
