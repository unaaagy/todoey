import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 900,
      // width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // const SizedBox(height: 32),
            Text(
              'Add Task',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'New task',
            )),

            const SizedBox(height: 16),

            FilledButton(
              onPressed: () {},
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
