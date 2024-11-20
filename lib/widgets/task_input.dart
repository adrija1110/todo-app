import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/task_cubit.dart';

class TaskInput extends StatelessWidget {
  const TaskInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter a new task',
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            if (controller.text.isNotEmpty) {
              context.read<TaskCubit>().addTask(controller.text);
              controller.clear();
            }
          },
        ),
      ],
    );
  }
}
