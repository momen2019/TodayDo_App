import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/TaskList.dart';
import '../widgets/menu_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tasks'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),



      ),
      drawer: const MenuList(),
      body: Consumer<TaskList>(
        builder: (context, taskList, child) => ListView.builder(
          itemCount: taskList.undoneTasks.length,
          itemBuilder: (context, index) {
            final task = taskList.undoneTasks[index];
            return ListTile(
              title: Text(task.name),
              trailing: Checkbox(
                value: task.isDone,
                onChanged: (_) {

                  taskList.toggleTaskDone(taskList.tasks.indexOf(task));
                },

              ),
            );
          },
        ),
      ),
    );
  }
}
