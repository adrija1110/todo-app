import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/widgets/clear_task_button.dart';
import '../cubit/task_cubit.dart';
import '../widgets/task_input.dart';
import '../widgets/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => TaskCubit(),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TaskInput(),
            ),
            Expanded(child: TaskList()),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ClearTasksButton(),
            ),
          ],
        ),
      ),
    );
  }
}
