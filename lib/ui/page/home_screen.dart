// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/color_cubit/change_color_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeColorCubit, ChangeColorState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is BodyColorChange) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                  duration: Duration(milliseconds: 2000),
                content: Text("Listing")));
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Bloc",
              style: Theme.of(context).textTheme.headline6),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<ChangeColorCubit>(context)
                .colorChange(Colors.purple);
          },
          child: Icon(Icons.change_circle),
        ),
        body: BlocBuilder<ChangeColorCubit, ChangeColorState>(
          builder: (context, state) {
            if (state is! BodyColorChange) {
              return Center(child: CircularProgressIndicator());
            }
            final colorData = (state as BodyColorChange).colors;
            return Container(
              height: MediaQuery.of(context).size.height,
              color: colorData,
            );
          },
        ),
      ),
    );
  }
}
