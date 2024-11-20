import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/task_cubit.dart';

class ClearTasksButton extends StatelessWidget {
  const ClearTasksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<TaskCubit>().clearTasks();
      },
      child: const Text('Clear All Tasks'),
    );
  }
}
