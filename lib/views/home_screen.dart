import 'package:f_bloc_practice/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos "),
      ),
      body: BlocBuilder<TodoCubit, TodoInitial>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                TextField(
                  controller: BlocProvider.of<TodoCubit>(context).controller,
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<TodoCubit>(context).todoAdd(
                          BlocProvider.of<TodoCubit>(context).controller.text);
                      BlocProvider.of<TodoCubit>(context).controller.clear();
                    },
                    child: const Text("Added")),
                const SizedBox(height: 10.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: 3,
                        child: ListTile(
                          title: Text(
                              "${index + 1}.${state.todos[index].toString()}"),
                          trailing: IconButton(
                              onPressed: () {
                                BlocProvider.of<TodoCubit>(context)
                                    .todoRemove(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
