import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class NewTaskDialog extends StatelessWidget {
  final Function addTaskCallback;

  const NewTaskDialog(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
      title: Text(
        'New task',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: TextField(
          decoration: const InputDecoration(
            filled: true,
            hintText: 'New task',
          ),
          minLines: 3,
          maxLines: 5,
          onChanged: (value) => newTaskTitle = value,
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurfaceVariant),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Discard'),
        ),
        FilledButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.inversePrimary),
            foregroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurfaceVariant),
          ),
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
            Navigator.pop(context);
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
