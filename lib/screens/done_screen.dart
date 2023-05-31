import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/TaskList.dart';
import '../widgets/menu_list.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DoneScreenState();
  }
}

class _DoneScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Done'),
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
              child: Text('No completed tasks'),
            );
          } else {
            return ListView.builder(
              itemCount: doneTasks.length,
              itemBuilder: (context, index) {
                final task = doneTasks[index];
                return ListTile(
                  title: Text(task.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      taskList.removeTask(taskList.tasks.indexOf(task));
                      setState(() {});
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
