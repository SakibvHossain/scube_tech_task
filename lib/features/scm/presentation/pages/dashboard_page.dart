import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_tech_task/app/router/app_route_paths.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import 'package:scube_tech_task/app/widgets/app_divider.dart';
import 'package:scube_tech_task/app/widgets/app_text.dart';
import 'package:scube_tech_task/features/scm/presentation/widgets/segmented_tab_section.dart';
import 'package:scube_tech_task/generated/assets.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_text_sizes.dart';
import '../widgets/data_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(children: [const SegmentedTabSection(), _GridViewDataList()]),
    );
  }
}

class _GridViewDataList extends StatelessWidget {
  static const _dashboardItems = [
    DashboardItem('Analysis Pro', Assets.imagesG1),
    DashboardItem('G. Generator', Assets.imagesG2),
    DashboardItem('Plant Summery', Assets.imagesG3),
    DashboardItem('Natural Gas', Assets.imagesG4),
    DashboardItem('D. Generator', Assets.imagesG5),
    DashboardItem('Water Process', Assets.imagesG6),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14, top: 8),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 3.2,
      ),
      itemCount: _dashboardItems.length,
      itemBuilder: (context, index) {
        final item = _dashboardItems[index];
        return GestureDetector(
            onTap: () => context.push(AppRoutePaths.notificationPath),
            child: _DashboardGridItem(title: item.title, iconPath: item.icon),);
      },
    );
  }
}
class _DashboardGridItem extends StatelessWidget {
  final String title;
  final String iconPath;

  const _DashboardGridItem({required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffB6B8D0)),
      ),
      child: Row(
        children: [
          Image.asset(iconPath, height: 32, width: 32, fit: BoxFit.contain),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: AppTextSizes.body,
                fontWeight: AppFontWeight.semiBold,
                color: Color(0xff646984),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
class DashboardItem {
  final String title;
  final String icon;

  const DashboardItem(this.title, this.icon);
}