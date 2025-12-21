import 'package:flutter/material.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_text_sizes.dart';

class KeyValueRow extends StatelessWidget {
  final String label;
  final String value;

  const KeyValueRow({super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$label      : ',
            style: const TextStyle(
              fontSize: AppTextSizes.caption,
              color: AppColors.fontFieldText,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              fontSize: AppTextSizes.caption,
              color: AppColors.fontDarkBlue,
              fontWeight: AppFontWeight.regular,
            ),
          ),
        ],
      ),
    );
  }
}