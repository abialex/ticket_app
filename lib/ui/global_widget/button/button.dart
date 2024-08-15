// ignore_for_file: sort_constructors_first, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  AppButton({
    required this.text,
    required this.onPressed,
    this.size,
    super.key,
  });

  final String text;
  final Size? size;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.primary),
        fixedSize: MaterialStatePropertyAll(size ?? const Size(20, 38)),
        elevation: const MaterialStatePropertyAll(0),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
