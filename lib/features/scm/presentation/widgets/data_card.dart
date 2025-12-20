import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_font_weight.dart';
import '../../../../app/theme/app_text_sizes.dart';
import '../../../../app/widgets/app_text.dart';

class DataCard extends StatelessWidget {
  final String title;
  final bool isActive;
  final String data1;
  final String data2;
  final String iconPath;
  final Color color;

  const DataCard({
    super.key,
    required this.title,
    required this.isActive,
    required this.data1,
    required this.data2,
    required this.iconPath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, left: AppSpacing.md, right: AppSpacing.md),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE5F4FE),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFA5A7B9)),
      ),
      child: Row(
        children: [
          // LEFT ICON
          Image.asset(
            iconPath,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          // CENTER CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE + STATUS
                Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs,),
                    AppText(
                      title,
                      fontWeight: AppFontWeight.medium,
                      color: AppColors.fontDarkBlue,
                    ),
                    const SizedBox(width: 6),
                    AppText(
                      isActive ? '(Active)' : '(Inactive)',
                      fontSize: AppTextSizes.caption,
                      color: isActive ? Colors.blue : Colors.red,
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                // DATA ROW 1
                _KeyValueRow(label: 'Data 1', value: data1),

                const SizedBox(height: 2),

                // DATA ROW 2
                _KeyValueRow(label: 'Data 2', value: data2),
              ],
            ),
          ),

          // RIGHT ARROW
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class _KeyValueRow extends StatelessWidget {
  final String label;
  final String value;

  const _KeyValueRow({
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

