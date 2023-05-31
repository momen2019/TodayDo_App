import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TaskList.dart';


class TaskProvider extends StatelessWidget {
  final TaskList taskList;

  const TaskProvider({super.key, required this.taskList, required Widget child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: taskList,
    );
  }

  static TaskList of(BuildContext context, {bool listen = true}) {
    return Provider.of<TaskList>(context, listen: listen);
  }
}
