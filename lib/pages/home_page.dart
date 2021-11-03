import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_todo_mobx/models/todo.model.dart';
import 'package:flutter_todo_mobx/stores/todo/todo.store.dart';

class HomePage extends StatelessWidget {
  final todoStore = TodoStore();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text('${todoStore.todos.length}'),
        ),
      ),
      body: Container(
        child: Observer(
          builder: (_) => ListView.builder(
            itemCount: todoStore.todos.length,
            itemBuilder: (context, index) {
              var todo = todoStore.todos[index];
              return Text('${todo.title}');
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var todo = Todo(id: 1, title: "Teste", isDone: false);
          todoStore.add(todo);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
