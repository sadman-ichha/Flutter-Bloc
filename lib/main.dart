import 'package:f_bloc_practice/cubit/todo_cubit.dart';
import 'package:f_bloc_practice/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Learn Flutter Bloc",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: BlocProvider(
          create: (context) => TodoCubit(),
          child: const HomeScreen(),
        ));
  }
}
