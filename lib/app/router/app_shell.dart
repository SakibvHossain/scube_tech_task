import 'package:scube_tech_task/app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:scube_tech_task/generated/assets.dart';
import '../theme/app_colors.dart';
import '../theme/app_font_weight.dart';
import '../theme/app_text_sizes.dart';
import '../widgets/app_text.dart';

class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: AppBar(
        backgroundColor: AppColors.fontWhite,
        scrolledUnderElevation: 0,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: const AppText(
          AppStrings.appBarText,
          fontWeight: AppFontWeight.medium,
          fontSize: AppTextSizes.subtitle,
          color: AppColors.fontDarkBlue,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset(
              Assets.imagesBell,
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      body: child,
    );
  }
}
