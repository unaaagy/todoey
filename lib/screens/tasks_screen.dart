import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/new_task_dialog.dart';
import 'package:todoey/widgets/top_bar.dart';

import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(170),
          child: TopBar(Provider.of<TaskData>(context).tasks),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        label: const Text('New task'),
        icon: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return NewTaskDialog((newTaskTitle) {
                  // setState(() {
                  //   if (newTaskTitle != '') {
                  //     Provider.of<TaskData>(context).tasks.add(Task(newTaskTitle, false));
                  //   }
                  // });
                });
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // padding: const EdgeInsets.only(top: 16),
              height: 300,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
