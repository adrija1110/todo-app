import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskState.initial());

  void addTask(String task) {
    final updatedTasks = List<String>.from(state.tasks)..add(task);
    emit(TaskState(updatedTasks));
  }

  void removeTask(int index) {
    final updatedTasks = List<String>.from(state.tasks)..removeAt(index);
    emit(TaskState(updatedTasks));
  }

  void clearTasks() {
    emit(TaskState([]));
  }
}
