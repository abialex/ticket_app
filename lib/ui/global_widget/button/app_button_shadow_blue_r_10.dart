import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/button/custom_button_shadow_r_10.dart';

class AppButtonShadowBlueR10 extends StatelessWidget {
  const AppButtonShadowBlueR10({
    required this.text,
    this.height,
    super.key,
    this.onPressed,
  });
  final String text;
  final double? height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButtonShadowR10(
      onClick: onPressed,
      text: text,
      height: height,
      backgroundColor: AppColors.blueAccent,
      textColor: AppColors.white,
    );
  }
}
