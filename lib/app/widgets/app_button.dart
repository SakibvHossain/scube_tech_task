import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';

class AppButton extends StatelessWidget {
  final String label;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    //* Button Action
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlue,
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      //* Child Text
      child: Text(
        label,
        style:
            textStyle ??
            GoogleFonts.inter(
              fontSize: AppTextSizes.medium,
              fontWeight: AppFontWeight.semiBold,
              color: AppColors.fontWhite,
            ),
      ),
    );
  }
}
