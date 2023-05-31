import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/TaskList.dart';
import '../widgets/menu_list.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Archive'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      drawer: const MenuList(),
      body: Consumer<TaskList>(
        builder: (context, taskList, child) {
          final doneTasks = taskList.doneTasks;
          if (doneTasks.isEmpty) {
            return const Center(
              child: Text('No archived tasks'),
            );
          } else {
            return ListView.builder(
              itemCount: doneTasks.length,
              itemBuilder: (context, index) {
                final task = doneTasks[index];
                return ListTile(
                  title: Text(task.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.restore),
                    onPressed: () {
                      taskList.toggleTaskDone(taskList.tasks.indexOf(task));
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
