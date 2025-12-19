import 'package:flutter/material.dart';
import 'package:scube_tech_task/app/constants/app_strings.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';
import 'package:scube_tech_task/generated/assets.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          //* Logo
          CircleAvatar(
            radius: 42,
            backgroundColor: AppColors.primaryBlue,
            child: Image.asset(Assets.imagesLoginIcon),
          ),

          //* SizedBox
          const SizedBox(height: AppSpacing.md),

          //* Header Text
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${AppStrings.loginHeader1stText}\n',
                  style: TextStyle(
                    color: AppColors.fontWhite,
                    fontSize: AppTextSizes.headline,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                ),
                TextSpan(
                  text: AppStrings.loginHeader2ndText,
                  style: TextStyle(
                    color: AppColors.fontWhite,
                    fontSize: AppTextSizes.title,
                    fontWeight: AppFontWeight.semiBold
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
