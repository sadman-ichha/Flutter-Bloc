import 'package:f_bloc_practice/bloc/text_cubit/cubit/text_change_cubit.dart';
import 'package:f_bloc_practice/ui/page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/color_cubit/change_color_cubit.dart';

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
        home: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ChangeColorCubit()),
            BlocProvider(create: (context) => TextChangeCubit()),
          ],
          child: HomeScreen(),
        ));
  }
}
