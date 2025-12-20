import 'package:flutter/material.dart';
import '../../../../app/theme/app_colors.dart';

class DashboardTabBar extends StatelessWidget {
  const DashboardTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: AppColors.darkGray,
      indicator: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      labelColor: AppColors.fontWhite,
      unselectedLabelColor: AppColors.fontGreyDark,
      tabs: [
        Tab(text: 'Summary'),
        Tab(text: 'SLD'),
        Tab(text: 'Data'),
      ],
    );
  }
}
