import 'package:flutter/material.dart';
import 'package:kanban/providers/kanban_provider.dart';
import 'package:kanban/ui/widgets/top_container.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:provider/provider.dart';

class KanbanScreen extends StatelessWidget {
  const KanbanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final provider = context.read<KanbanProvider>();
          provider.addValue();
        }, //
        child: Icon(LucideIcons.plus),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            spacing: 25,
            children: const [
              TopContainer(),
              Expanded(
                child: Placeholder(child: Center(child: Text('Kanban Board'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
