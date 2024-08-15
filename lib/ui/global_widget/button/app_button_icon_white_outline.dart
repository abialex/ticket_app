// ignore_for_file: lines_longer_than_80_chars, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/button/custom_button_icon_text_outline.dart';

class AppButtonWhiteOutline extends StatelessWidget {
  AppButtonWhiteOutline({
    required this.onPressed,
    required this.text,
    super.key,
  });

  Widget? icon;
  String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButtonIconTextOutline(
      onPressed: onPressed,
      textButton: text,
      color: AppColors.white,
      prefixIcon: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.back_hand_outlined,
          color: AppColors.blueSecondary,
          size: 16,
        ),
      ),
      //sufixIcon: const Icon(Icons.remove),
    );
  }
}
