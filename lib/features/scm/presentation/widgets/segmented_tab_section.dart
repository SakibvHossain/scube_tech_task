import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'dashboard_tab_bar.dart';
import 'data_list_section.dart';
import 'electricity_section.dart';

class SegmentedTabSection extends HookWidget {
  const SegmentedTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffB6B8D0)),
        ),
        child: Column(
          children: [
            const DashboardTabBar(),
            const ElectricitySection(),
            DataListSection(scrollController: scrollController),
          ],
        ),
      ),
    );
  }
}
