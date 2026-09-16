import 'package:ecommerce/provider/theme_provider.dart';
import 'package:ecommerce/provider/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController _Todocontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    final todoProvider = Provider.of<TodoProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Screen"),
        actions: [
          Switch(value: themeProvider.isDarkTheme, onChanged: (_){
            themeProvider.toogleTheme();
          },)
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _Todocontroller,
                  
                    
                  ),
                  
                ),
                ElevatedButton(onPressed: (){
                  if(_Todocontroller.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: 
                      Text("Please Input Field"), backgroundColor: Colors.red,),
                      
                    );
                    

                  }
                  else{
                    todoProvider.addTodo(_Todocontroller.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Todos Added"),
                      backgroundColor: Colors.green,),
                      
                    );
                  }
                  _Todocontroller.clear();
                }, child: Text("submit"))
              ],
            ),
            SizedBox(height: 20,),

            ListView.builder(
              shrinkWrap: true,
              itemCount: todoProvider.todos.length,
              itemBuilder:(context, index){
                return ListTile(
                  title: Text(todoProvider.todos[index].title),
                  trailing: IconButton(onPressed: (){
                    todoProvider.removeTodo(index);
                  }, icon: Icon(Icons.delete,color: Colors.red,)),

                );
              }
              ),
          ],
        ),
      ),
    );
  }
}