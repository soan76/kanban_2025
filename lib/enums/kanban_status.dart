enum KanbanStatus { todo, progress, done }

extension KanbanStatusExtension on KanbanStatus {
  String get label => switch (this) {
    KanbanStatus.todo => 'To-Do',
    KanbanStatus.progress => 'In Progress',
    KanbanStatus.done => 'Done',
  };
}