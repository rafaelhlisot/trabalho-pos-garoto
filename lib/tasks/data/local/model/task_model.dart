class TaskModel {
  String id;
  String title;
  String description;
  String detail;
  DateTime? startDateTime;
  DateTime? stopDateTime;
  bool completed;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.detail,
    required this.startDateTime,
    required this.stopDateTime,
    this.completed = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'detail': detail,
      'completed': completed,
      'startDateTime': startDateTime?.toIso8601String(),
      'stopDateTime': stopDateTime?.toIso8601String(),
    };
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      detail: json['detail'],
      completed: json['completed'],
      startDateTime: DateTime.parse(json['startDateTime']),
      stopDateTime: DateTime.parse(json['stopDateTime']),
    );
  }

  @override
  String toString() {
    return 'TaskModel{id: $id, title: $title, description: $description, '
        'detail: $detail,'
        'startDateTime: $startDateTime, stopDateTime: $stopDateTime, '
        'completed: $completed}';
  }
}
