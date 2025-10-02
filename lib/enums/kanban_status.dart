import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

enum KanbanStatus { todo, progress, done }

extension KanbanStatusExtension on KanbanStatus {
  String get label => switch (this) {
    KanbanStatus.todo => 'To-Do',
    KanbanStatus.progress => 'In Progress',
    KanbanStatus.done => 'Done',
  };

  Color get backgroundColor => switch(this) {
    KanbanStatus.todo => const Color(0xFFF8F8F3),
    KanbanStatus.progress => const Color(0xFFEBF7FC),
    KanbanStatus.done => const Color(0xFFEDF9E8),
  };

  Color get bubbleColor => switch (this) {
    KanbanStatus.todo => Color(0xFFF5F5F5),
    KanbanStatus.progress => Color(0xFFC8E9FF),
    KanbanStatus.done => Color(0xFFB7EFC2),
  };

  IconData get icon => switch (this) {
    KanbanStatus.todo => LucideIcons.circlePause,
    KanbanStatus.progress => LucideIcons.circlePlay,
    KanbanStatus.done => LucideIcons.circleCheck,
  };

  IconData get nextIcon => switch (this) {
    KanbanStatus.todo => LucideIcons.circlePlay,
    KanbanStatus.progress => LucideIcons.circlePause,
    KanbanStatus.done => LucideIcons.circleCheck,
  };
}

class KanbanUtill {
  static KanbanStatus  stringToStatus(String value) {
    /* KanbanStatus status;

    if (value == 'To-Do') {
      status = KanbanStatus.todo;
    } else if (value == 'In Progress') {
      status = KanbanStatus.progress;
    } else if (value == 'Done') {
      status = KanbanStatus.done;
    } else {
      status = KanbanStatus.todo;
    }
    return status; */

    /* return switch (value.toLowerCase()) {
      'in progress' => KanbanStatus.progress,
      'done' => KanbanStatus.done,
      _ => KanbanStatus.todo,
    }; */

    return KanbanStatus.values.firstWhere(
      (e) => e.name == value,
      orElse: () => KanbanStatus.todo
    );
  }
}