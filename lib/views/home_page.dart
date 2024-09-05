import 'package:f_bloc_practice/core/helper/navigator_hepler.dart';
import 'package:f_bloc_practice/core/helper/sizedbox_helper.dart';
import 'package:f_bloc_practice/views/counter_screen.dart';
import 'package:f_bloc_practice/views/todo_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              NavigatorHelper.navigateTo(context, const TodoScreen());
            },
            child: const Text("Todo"),
          ),
          SizedboxHelper.height(10),
          ElevatedButton(
              onPressed: () => NavigatorHelper.navigateTo(
                    context,
                    const CounterScreen(),
                  ),
              child: const Text("Counter")),
        ],
      ),
    );
  }
}
