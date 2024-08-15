import 'package:flutter/widgets.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';

class CustomButtonShadowR10 extends StatelessWidget {
  const CustomButtonShadowR10({
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderColor,
    this.height,
    super.key,
    this.fontWeight,
    this.onClick,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;
  final String text;
  final double? height;
  final FontWeight? fontWeight;
  final double? fontSize;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 0.3, color: borderColor ?? AppColors.lightGray),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.dark.withOpacity(0.75),
              spreadRadius: -2,
              blurRadius: 5,
              offset: const Offset(1.5, 1.5),
            ),
          ],
        ),
        child: Center(
          child: AppTextGlobal.lightText(
            text: text,
            colorText: textColor,
            textAlign: TextAlign.center,
            fontSize: fontSize ?? 13,
            fontWeight: fontWeight,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
