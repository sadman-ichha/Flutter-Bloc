import 'package:bloc/bloc.dart';
part 'todo_state.dart';


class TodoCubit extends Cubit<TodoInitial> {
  
  TodoCubit() : super(TodoInitial(todos: Todo.todoData));

  void todoRemove(int index) {
    final List<String> todoList = state.todos;
    Todo.todoData.removeAt(index);
    emit(TodoInitial(todos: todoList));
  }

  void todoAdd(String todo) {
    final List<String> todoList = state.todos;
    Todo.todoData.add(todo);
    emit(TodoInitial(todos: todoList));
  }
}

class Todo {
  static List<String> todoData = [
    "Buy groceries: Milk, Bread, Eggs, Butter - Incomplete",
    "Call the plumber: Fix the leaking sink - Complete",
    "Complete Flutter project: Finish the new features and push to GitHub - Incomplete",
    "Read a book: Read 'Clean Code' by Robert C. Martin - Complete",
    "Workout: 30 minutes of cardio - Incomplete",
    "Email client: Send the updated project proposal - Incomplete",
    "Schedule meeting: Arrange a meeting with the team for the new project - Incomplete"
  ];
}
