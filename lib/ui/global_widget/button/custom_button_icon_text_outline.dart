// ignore_for_file: must_be_immutable, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';

class CustomButtonIconTextOutline extends StatelessWidget {
  CustomButtonIconTextOutline({
    required this.onPressed,
    required this.textButton,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.radius = 10,
    this.height = 50,
    this.width = 150,
    this.colorBorder = AppColors.lightBackgroundColor,
    super.key,
  });
  Widget? sufixIcon;
  Widget? prefixIcon;
  String? textButton;
  VoidCallback onPressed;
  Color? color;
  double radius;
  double height;
  double width;
  Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: BorderSide(
          color: colorBorder!,
        ),
      ),
      color: color ?? AppColors.primary,
      height: height,
      minWidth: width,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefixIcon ?? const SizedBox.shrink(),
          //if (ResponsiveApp.isMobile(context)) ...{
          AppTextGlobal.largeText(
            text: textButton ?? '',
            fontSize: 16,
            colorText: AppColors.blueSecondary,
            fontWeight: FontWeight.w400,
          ),
          //},
          sufixIcon ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
