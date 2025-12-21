import 'package:flutter/material.dart';
import 'package:scube_tech_task/features/scm/presentation/widgets/toggle_item.dart';

class SourceLoadToggle extends StatelessWidget {
  const SourceLoadToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff6C99B8).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ToggleItem(title: 'Source', active: true),
          ToggleItem(title: 'Load'),
        ],
      ),
    );
  }
}