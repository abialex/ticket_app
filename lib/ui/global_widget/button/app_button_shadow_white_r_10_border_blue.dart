import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/button/custom_button_shadow_r_10.dart';

class AppButtonShadowWhiteR10BorderBlue extends StatelessWidget {
  const AppButtonShadowWhiteR10BorderBlue({
    required this.text,
    this.height,
    super.key,
    this.fontWeight,
    this.onPressed,
    this.fontSize,
  });
  final String text;
  final double? height;
  final void Function()? onPressed;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CustomButtonShadowR10(
      onClick: onPressed,
      text: text,
      height: height,
      backgroundColor: AppColors.white,
      textColor: AppColors.blueAccent,
      borderColor: AppColors.blueAccent,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
  }
}
