import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/cubit/task_state.dart';
import '../cubit/task_cubit.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        if (state.tasks.isEmpty) {
          return const Center(
            child: Text(
              'No tasks yet!',
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        return ListView.builder(
          itemCount: state.tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.tasks[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  context.read<TaskCubit>().removeTask(index);
                },
              ),
            );
          },
        );
      },
    );
  }
}
