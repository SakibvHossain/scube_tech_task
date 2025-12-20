import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  final double? dividerPadding;
  final double? thickness;

  const AppDivider({super.key, this.color, this.dividerPadding, this.thickness});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dividerPadding ?? AppSpacing.md),
      child: Divider(color: color ?? AppColors.fontGrey, thickness: thickness ?? 0.0,),
    );
  }
}
