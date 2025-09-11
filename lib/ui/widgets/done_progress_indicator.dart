import 'package:flutter/material.dart';
import 'package:kanban/providers/kanban_provider.dart';
import 'package:provider/provider.dart';

class DoneProgressIndicator extends StatelessWidget {
  const DoneProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<KanbanProvider>(
      builder: (_, provider, child) {
        final todoCount = 0;
        final doneCount = 3;

        return Row(
          spacing: 8 ,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                value: todoCount / doneCount,
                color: Colors.green,
                backgroundColor: Colors.grey,
                strokeWidth: 4,
              ),
            ),
            Text('$doneCount / $todoCount 완료', style: TextStyle(fontSize: 17)),
          ],
        );
      },
    );
  }
}
