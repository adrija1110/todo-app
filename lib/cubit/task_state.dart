class TaskState {
  final List<String> tasks;

  TaskState(this.tasks);

  factory TaskState.initial() {
    return TaskState([]);
  }
}
