import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';

class AppButtonVerticalEllipsis extends StatelessWidget {
  const AppButtonVerticalEllipsis({
    this.onPressed,
    super.key,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0.5),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 30,
        ),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.blueAccent,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(15),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.circle,
              color: AppColors.white,
              size: 7,
            ),
            Icon(
              Icons.circle,
              color: AppColors.white,
              size: 7,
            ),
            Icon(
              Icons.circle,
              color: AppColors.white,
              size: 7,
            ),
          ],
        ),
      ),
    );
  }
}
