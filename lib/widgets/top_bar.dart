import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class TopBar extends StatelessWidget {
  final List<Task> tasks;

  const TopBar(this.tasks, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TodoeyLeadingIcon(),
          const SizedBox(height: 12),
          const TodoeyTitle(),
          Text(
            '${Provider.of<TaskData>(context).taskCount} Tasks',
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class TodoeyTitle extends StatelessWidget {
  const TodoeyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Todoey',
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
    );
  }
}

class TodoeyLeadingIcon extends StatelessWidget {
  const TodoeyLeadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
      radius: 32,
      child: Icon(
        size: 32,
        Icons.list,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }
}
