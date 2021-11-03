import 'package:mobx/mobx.dart';
import 'package:flutter_todo_mobx/models/todo.model.dart';
part 'todo.store.g.dart';
//Gerar o codigo
//flutter packages pub run build_runner build

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  @observable
  var todos = ObservableList<Todo>();

  @action
  void add(Todo todo) {
    todos.add(todo);
  }
}
