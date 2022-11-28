// ignore_for_file: prefer_const_constructors

import 'package:f_bloc_practice/bloc/cubit/change_color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Flutter Bloc", style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<ChangeColorCubit>(context).colorChange(Colors.purple);
        },
        child: Icon(Icons.change_circle),
      ),
      body: BlocBuilder<ChangeColorCubit, ChangeColorState>(
        builder: (context, state) {
          if (state is! AppBarColorChange) {
            return Center(child: CircularProgressIndicator());
          }
          final colorData = AppBarColorChange().colors;
          return Container(
            height: MediaQuery.of(context).size.height,
            color: colorData,
          );
        },
      ),
    );
  }
}
