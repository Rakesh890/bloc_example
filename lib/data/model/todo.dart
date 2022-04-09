class Todo {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'] as int?,
        id = json['id'] as int?,
        title = json['title'] as String?,
        completed = json['completed'] as bool?;

  Map<String, dynamic> toJson() => {
    'userId' : userId,
    'id' : id,
    'title' : title,
    'completed' : completed
  };
}