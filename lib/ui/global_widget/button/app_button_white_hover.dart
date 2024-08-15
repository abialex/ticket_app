// ignore_for_file: lines_longer_than_80_chars, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/button/custom_button_hover_icon_text_outline.dart';

class AppButtonWhiteHoverOutline extends StatelessWidget {
  AppButtonWhiteHoverOutline({
    required this.onPressed,
    required this.text,
    super.key,
  });

  Widget? icon;
  String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButtonIconTextOutlineHover(
      onPressed: onPressed,
      textButton: text,
      color: AppColors.white,
    );
  }
}
