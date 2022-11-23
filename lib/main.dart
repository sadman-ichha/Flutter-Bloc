import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/cubit/change_color_cubit.dart';
import 'ui/page/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn Flutter Bloc ",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (BuildContext context) => ChangeColorCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
