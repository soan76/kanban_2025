import 'package:flutter/widgets.dart';
import 'package:kanban/enums/kanban_status.dart';

class KanbanProvider with ChangeNotifier {
  KanbanStatus kanvanStatus = KanbanStatus.todo;

  /// UI 새로고침
  void _refreshUI() => notifyListeners();
  
  void setKanbanStatus(KanbanStatus status) {
    if(kanvanStatus == status) return;
    kanvanStatus = status;
    _refreshUI();
  }
}
