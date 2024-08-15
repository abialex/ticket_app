import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';

import 'button_base.dart';

class ButtonSuccess extends StatelessWidget {
  final String text;
  final double? height;
  final void Function()? onClick;
  const ButtonSuccess({
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
      backgroundColor: AppColors.slg01,
      textColor: AppColors.white,
    );
  }
}
