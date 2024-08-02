// ignore_for_file: prefer_const_constructors

import 'package:f_bloc_practice/bloc/text_cubit/cubit/text_change_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/color_cubit/change_color_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeColorCubit, ChangeColorState>(
        listener: (context, state) {
          if (state is BodyColorChange) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                duration: Duration(milliseconds: 2000),
                content: Text("Listing", textAlign: TextAlign.center),
              ),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Bloc",
                style: Theme.of(context).textTheme.titleLarge),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 10,
          ),
          body: BlocBuilder<ChangeColorCubit, ChangeColorState>(
              builder: (context, state) {
            if (state is! BodyColorChange) {
              return Center(child: CircularProgressIndicator());
            }
            final colorData = (state).colors;
            return Container(
              height: MediaQuery.of(context).size.height,
              color: colorData,
              child: Column(
                children: [
                  BlocConsumer<TextChangeCubit, TextChangeState>(
                    listener: (context, state) {
                      if (state is TextChange) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Consumer With Listen"),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is! TextChange) {
                        Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.blueAccent,
                            child: Text('hh'));
                      }
                      final textData = (state as TextChange).text;

                      return Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.greenAccent,
                        child: Center(
                            child: Text(
                          textData.toString(),
                          style: TextStyle(fontSize: 18.0),
                        )),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ChangeColorCubit>(context)
                  .colorChange(Colors.purpleAccent);
              BlocProvider.of<TextChangeCubit>(context)
                  .changeText("This is Text");
            },
            child: Icon(Icons.change_circle),
          ),
        ));
  }
}
