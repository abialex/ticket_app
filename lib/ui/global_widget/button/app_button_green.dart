// ignore_for_file: lines_longer_than_80_chars, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/button/custom_button_icon_text.dart';

class AppButtonGreen extends StatelessWidget {
  AppButtonGreen({
    required this.onPressed,
    required this.text,
    super.key,
  });

  Widget? icon;
  String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButtonIconText(
      onPressed: onPressed,
      textButton: text,
      color: AppColors.greenAccent,
      //prefixIcon: const Icon(Icons.add),
      //sufixIcon: const Icon(Icons.remove),
    );
  }
}
