class Todo {
  int? id;
  String? title;
  bool? isDone;

  Todo({this.id, this.title, this.isDone});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    isDone = json['isDone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['isDone'] = this.isDone;
    data['title'] = this.title;
    return data;
  }
}
