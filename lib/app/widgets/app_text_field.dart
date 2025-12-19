import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final ValueChanged<String>? onChanged;
  final String? errorText;

  AppTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.onChanged,
    this.errorText,
  });

  final ValueNotifier<bool> _obscureNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureNotifier,
      builder: (context, obscureText, _) {
        return TextField(
          obscureText: isPassword ? obscureText : false,
          onChanged: onChanged,
          cursorColor: AppColors.primaryBlue,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.inter(
              fontWeight: AppFontWeight.regular,
              fontSize: AppTextSizes.body,
              color: AppColors.fontFieldText,
            ),
            errorText: errorText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primaryBlue),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primaryBlue),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primaryBlue),
              borderRadius: BorderRadius.circular(12),
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () => _obscureNotifier.value = !obscureText,
                  )
                : null,
          ),
        );
      },
    );
  }
}
