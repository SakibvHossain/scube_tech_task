import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/widgets/app_text.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_text_sizes.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          _SegmentedTabBar(),
          Divider(height: 1),
          // TabBarView comes later
        ],
      ),
    );
  }
}

class _SegmentedTabBar extends StatelessWidget {
  const _SegmentedTabBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: const Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.w600),
              tabs: [
                Tab(text: 'Summary'),
                Tab(text: 'SLD'),
                Tab(text: 'Data'),
              ],
            ),

            _ElectricitySection()
          ],
        ),
      ),
    );
  }
}

//* Part 1
class _TopTabs extends StatelessWidget {
  const _TopTabs();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          _TabItem(title: 'Summary', isActive: true),
          _TabItem(title: 'SLD'),
          _TabItem(title: 'Data'),
        ],
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final bool isActive;

  const _TabItem({required this.title, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primaryBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: AppText(
            title,
            color: isActive ? Colors.white : AppColors.fontFieldText,
            fontWeight: AppFontWeight.medium,
          ),
        ),
      ),
    );
  }
}

// Part 2
class _ElectricitySection extends StatelessWidget {
  const _ElectricitySection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        const AppText('Electricity', fontWeight: AppFontWeight.medium),
        const SizedBox(height: 16),
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryBlue, width: 10),
          ),
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText('Total Power'),
                AppText(
                  '5.53 kW',
                  fontWeight: AppFontWeight.bold,
                  fontSize: AppTextSizes.subtitle,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _SourceLoadToggle(),
      ],
    );
  }
}

class _SourceLoadToggle extends StatelessWidget {
  const _SourceLoadToggle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.lightBlue1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ToggleItem(title: 'Source', active: true),
          _ToggleItem(title: 'Load'),
        ],
      ),
    );
  }
}

class _ToggleItem extends StatelessWidget {
  final String title;
  final bool active;

  const _ToggleItem({required this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: active ? AppColors.primaryBlue : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: AppText(
        title,
        color: active ? Colors.white : AppColors.fontFieldText,
      ),
    );
  }
}

class _DataSection extends StatelessWidget {
  const _DataSection();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: const [
        _DataCard(title: 'Data View'),
        _DataCard(title: 'Data Type 2'),
        _DataCard(title: 'Data Type 3', isInactive: true),
      ],
    );
  }
}

class _DataCard extends StatelessWidget {
  final String title;
  final bool isInactive;

  const _DataCard({required this.title, this.isInactive = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.electric_bolt),
        title: AppText(title),
        subtitle: const AppText('Data 1 : 55505.63\nData 2 : 55805.63'),
        trailing: Icon(
          Icons.chevron_right,
          color: isInactive ? Colors.red : null,
        ),
      ),
    );
  }
}

class _BottomActions extends StatelessWidget {
  const _BottomActions();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          _ActionItem('Analysis Pro'),
          _ActionItem('G. Generator'),
          _ActionItem('Plant Summary'),
          _ActionItem('Natural Gas'),
          _ActionItem('D. Generator'),
          _ActionItem('Water Process'),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final String title;

  const _ActionItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.lightBlue1,
          child: Icon(Icons.widgets),
        ),
        const SizedBox(height: 6),
        AppText(
          title,
          fontSize: AppTextSizes.caption,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
