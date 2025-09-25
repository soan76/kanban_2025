import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kanban/enums/kanban_status.dart';
import 'package:kanban/providers/kanban_provider.dart';
import 'package:kanban/themes/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class StatusIsland extends StatelessWidget {
  final KanbanStatus status;

  const StatusIsland({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.statusIslandHeight,
      child: Row(
        children: [

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: status.bubbleColor,
                borderRadius: BorderRadius.circular(
                  AppSize.statusIslandHeight + 10,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                spacing: 10,
                children: [
                  Icon(status.icon, size: 26),
                  Expanded(child: 
                  Text(
                      status.label,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        height: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 숫자
          _buildCircleBubble(
            child: const Text(
              '2',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),

          // 추가 
          _buildCircleBubble(
            onTap: () {
              debugPrint('$status 추가하기');
              context.read<KanbanProvider>().addItem(status, 'New Task');
            },
            visible: status != KanbanStatus.done,
            child: const Icon(LucideIcons.plus, size: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleBubble({
    bool visible = true,
    required Widget child,
    VoidCallback? onTap,
  }) {
    if (!visible) return const SizedBox.shrink();

    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppSize.statusIslandHeight,
        height: AppSize.statusIslandHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: status.bubbleColor,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}