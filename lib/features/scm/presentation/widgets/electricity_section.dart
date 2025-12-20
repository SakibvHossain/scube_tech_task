import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/widgets/app_divider.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_text_sizes.dart';
import '../../../../app/widgets/app_text.dart';

class ElectricitySection extends StatelessWidget {
  const ElectricitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSpacing.md),
        const AppText(
          'Electricity',
          fontSize: AppTextSizes.subtitle,
          fontWeight: AppFontWeight.semiBold,
          color: AppColors.fontGrey,
        ),
        const SizedBox(height: AppSpacing.sm),
        const AppDivider(thickness: 1),
        const SizedBox(height: AppSpacing.md),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.fontLightBlue,
              width: AppSpacing.lg,
            ),
          ),
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  'Total Power',
                  fontSize: AppTextSizes.caption,
                  color: AppColors.fontDarkBlue,
                ),
                AppText(
                  '5.53 kW',
                  fontWeight: AppFontWeight.semiBold,
                  fontSize: AppTextSizes.subtitle,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        const _SourceLoadToggle(),
        const SizedBox(height: AppSpacing.sm),
        const AppDivider(thickness: 2),
        const SizedBox(height: AppSpacing.sm),
      ],
    );
  }
}

class _SourceLoadToggle extends StatelessWidget {
  const _SourceLoadToggle();

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
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      decoration: BoxDecoration(
        color: active ? AppColors.primaryBlue : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: AppText(
        title,
        color: active ? Colors.white : AppColors.fontGreyDark,
        fontWeight: active ? AppFontWeight.semiBold : AppFontWeight.regular,
        fontSize: active ? AppTextSizes.subtitle : AppTextSizes.subtitle,
      ),
    );
  }
}
