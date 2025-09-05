import 'package:flutter/material.dart';
import 'package:kanban/providers/kanban_provider.dart';
import 'package:provider/provider.dart';

class DoneProgressIndicator extends StatelessWidget {
  const DoneProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<KanbanProvider>(
      builder: (_, provider, child) {
        debugPrint('value: ${provider.value}');
        final value = provider.value;
        final valueString = value == 0
            ? '없음' //
            : value.toString();

        return Text(provider.value.toString(), style: TextStyle(fontSize: 20));
      },
    );
  }
}
