import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final double? height;
  final TextDecoration? decoration;

  const AppText(
      this.text, {
        super.key,
        this.fontSize = AppTextSizes.body,
        this.fontWeight = AppFontWeight.regular,
        this.color,
        this.textAlign = TextAlign.start,
        this.maxLines,
        this.overflow = TextOverflow.ellipsis,
        this.height,
        this.decoration,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        height: height,
        decoration: decoration,
      ),
    );
  }
}
