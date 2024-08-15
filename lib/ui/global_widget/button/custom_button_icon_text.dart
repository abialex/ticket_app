// ignore_for_file: must_be_immutable, lines_longer_than_80_chars

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';

class CustomButtonIconText extends StatelessWidget {
  CustomButtonIconText({
    required this.onPressed,
    required this.textButton,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.radius = 10,
    this.height = 40,
    this.width = 150,
    this.colorText,
    this.mainAxisAlignment,
    this.maxLines = 1,
    this.fontSize,
    this.textAlign,
    super.key,
  });
  Widget? sufixIcon;
  Widget? prefixIcon;
  String? textButton;
  VoidCallback onPressed;
  Color? color;
  Color? colorText;
  double radius;
  double height;
  double width;
  MainAxisAlignment? mainAxisAlignment;
  int maxLines;
  double? fontSize;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(radius),
        ),
        // minWidth: width,
        // onPressed: onPressed,
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceEvenly,
          children: [
            prefixIcon ?? const SizedBox.shrink(),
            //if (ResponsiveApp.isMobile(context)) ...{
            Expanded(
              child: AppTextGlobal.largeText(
                text: textButton ?? '',
                fontSize: fontSize ?? (Platform.isAndroid ? 12 : 16),
                colorText: colorText ?? AppColors.white,
                fontWeight: FontWeight.w500,
                maxLines: maxLines,
                textAlign: textAlign ?? TextAlign.center,
              ),
            ),
            //},
            sufixIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
