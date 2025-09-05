import 'package:flutter/widgets.dart';

class KanbanProvider with ChangeNotifier {
  int value = 0;

  void setValue(int value) {
    this.value = value;
    debugPrint('변수변경: $value');
  }

  void addValue() {
    value++;
    notifyListeners();
    debugPrint('변수 변경 : $value');
  }
}
