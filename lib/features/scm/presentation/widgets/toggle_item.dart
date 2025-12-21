import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_text_sizes.dart';
import '../../../../app/widgets/app_text.dart';

class ToggleItem extends StatelessWidget {
  final String title;
  final bool active;

  const ToggleItem({super.key, required this.title, this.active = false});

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