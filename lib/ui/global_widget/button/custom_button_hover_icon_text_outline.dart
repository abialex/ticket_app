// ignore_for_file: must_be_immutable, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';

class CustomButtonIconTextOutlineHover extends StatefulWidget {
  CustomButtonIconTextOutlineHover({
    required this.onPressed,
    required this.textButton,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.radius = 10,
    this.height = 50,
    this.width = 150,
    this.colorBorder = AppColors.lightBackgroundColor,
    this.colorHover = AppColors.blueSecondary,
    super.key,
  });
  Widget? sufixIcon;
  Widget? prefixIcon;
  String? textButton;
  VoidCallback onPressed;
  Color? color;
  double radius;
  double height;
  double width;
  Color? colorBorder;
  Color? colorHover;

  @override
  State<CustomButtonIconTextOutlineHover> createState() => _CustomButtonIconTextOutlineHoverState();
}

class _CustomButtonIconTextOutlineHoverState extends State<CustomButtonIconTextOutlineHover> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          side: BorderSide(
            color: widget.colorBorder!,
          ),
        ),
        color: _isHovered ? widget.colorHover : widget.color,
        height: widget.height,
        minWidth: widget.width,
        onPressed: widget.onPressed,
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.prefixIcon ?? const SizedBox.shrink(),
            //if (ResponsiveApp.isMobile(context)) ...{
            AppTextGlobal.largeText(
              text: widget.textButton ?? '',
              fontSize: 16,
              colorText: _isHovered ? AppColors.white : widget.colorBorder,
              fontWeight: FontWeight.w400,
            ),
            //},
            widget.sufixIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
