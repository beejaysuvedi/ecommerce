import 'package:ecommerce/model/todo_model.dart';
import 'package:flutter/material.dart';
class TodoProvider extends ChangeNotifier{
  List <TodoModel>_todos =[];
  List<TodoModel>  get todos =>_todos;

  void addTodo(String text){
    _todos.add(TodoModel(title: text));
    notifyListeners();
  }
  void removeTodo(int index){
    _todos.removeAt(index);
    notifyListeners();
  }
}