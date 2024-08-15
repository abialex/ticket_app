import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';

import 'button_base.dart';

class ButtonCancel extends StatelessWidget {
  final String text;
  final double? height;
  final void Function()? onClick;

  const ButtonCancel({
    super.key,
    required this.text,
    this.height,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCustomBase(
      onClick: onClick,
      text: text,
      height: height,
      backgroundColor: AppColors.white,
      textColor: AppColors.dark,
    );
  }
}
