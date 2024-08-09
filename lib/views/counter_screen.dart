import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment/Decrement Counter'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '_counter',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('Decrement'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
