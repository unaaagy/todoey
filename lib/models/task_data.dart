import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task('Test task.', false),
    Task('Buy eggs.', true),
    Task('Buy milk.', true),
  ];

  get tasks => List<Task>.unmodifiable(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    final task = Task(newTaskTitle, false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
