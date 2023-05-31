import 'package:flutter/material.dart';

import 'Task.dart';


class TaskList extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void toggleTaskDone(int taskIndex) {
    _tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  void toggleTaskArchive(int taskIndex) {
    _tasks[taskIndex].toggleArchive();
    notifyListeners();
  }

  void removeTask(int indexOf) {
    _tasks.removeAt(indexOf);
  }

  List<Task> get undoneTasks => _tasks.where((task) => !task.isDone).toList();

  List<Task> get doneTasks => _tasks.where((task) => task.isDone).toList();

  List<Task> get archivedTasks => _tasks.where((task) => task.isArchived).toList();
}
