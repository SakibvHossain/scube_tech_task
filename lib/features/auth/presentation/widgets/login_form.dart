import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_tech_task/app/constants/app_strings.dart';
import 'package:scube_tech_task/app/router/app_route_paths.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';
import 'package:scube_tech_task/app/widgets/app_button.dart';
import 'package:scube_tech_task/app/widgets/app_text.dart';
import 'package:scube_tech_task/app/widgets/app_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //* Space
        const SizedBox(height: AppSpacing.lg),

        //* Login Text
        const AppText(
          AppStrings.login,
          textAlign: TextAlign.center,
          fontSize: AppTextSizes.headline,
          fontWeight: AppFontWeight.bold,
          color: AppColors.fontLightDarkBlue,
        ),

        //* Space
        const SizedBox(height: AppSpacing.lg),

        //* Username Field
        AppTextField(hintText: AppStrings.loginField1),

        //* Space
        const SizedBox(height: AppSpacing.md),

        //* Password Field
        AppTextField(hintText: AppStrings.loginField2, isPassword: true,),

        //* Forget Password
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const AppText(
              AppStrings.loginForgetPText,
              fontWeight: AppFontWeight.medium,
              fontSize: AppTextSizes.caption,
              color: AppColors.fontFieldText,
              decoration: TextDecoration.underline,
            ),
          ),
        ),

        //* Space
        const SizedBox(height: AppSpacing.md),

        //* Login Button
        AppButton(
          label: 'Login',
          onPressed: () => context.push(AppRoutePaths.dashboardPath),
        ),

        //* Space
        const SizedBox(height: AppSpacing.md),

        //* Register Now
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppStrings.loginFooter1stText} ',
                style: TextStyle(
                  color: AppColors.fontFieldText,
                  fontSize: AppTextSizes.caption,
                  fontWeight: AppFontWeight.medium,
                ),
              ),
              TextSpan(
                text: AppStrings.loginFooter2ndText,
                style: TextStyle(
                    color: AppColors.primaryBlue,
                    fontSize: AppTextSizes.body,
                    fontWeight: AppFontWeight.semiBold
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
