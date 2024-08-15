import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/checkbox/custom_label_check_box_r_10.dart';

class CheckBoxLabelBlueR10 extends StatelessWidget {
  const CheckBoxLabelBlueR10({
    required this.onChanged,
    super.key,
    this.value,
    this.text,
    this.fontSize,
  });
  final void Function() onChanged;
  final bool? value;
  final String? text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CustomLabelCheckBoxR10(
      onChanged: onChanged,
      backgroundColor: AppColors.blueAccent,
      iconBackgroundColor: AppColors.white,
      text: text,
      value: value,
      fontSize: fontSize,
    );
  }
}
