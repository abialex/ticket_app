// ignore_for_file: must_be_immutable, lines_longer_than_80_chars, inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_box.dart';
import 'package:ticket_app/ui/global_widget/button/app_button_shadow_white_r_10.dart';

class CustomTextButtonFormField extends StatelessWidget {
  CustomTextButtonFormField({
    required this.controller,
    this.textButton,
    required this.buttonOnTap,
    this.placeholder = '',
    this.label = '',
    this.validator,
    this.onChanged,
    this.obscureText = false,
    this.enable = true,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.sufixIcon,
    this.prefixIcon,
    this.onTap,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.edgeInsets,
    super.key,
  });

  TextEditingController controller;
  String placeholder;
  String label;
  ValueChanged<String>? onChanged;
  FormFieldValidator<String>? validator;
  bool obscureText;
  bool enable;
  AutovalidateMode autoValidateMode;
  Widget? sufixIcon;
  Widget? prefixIcon;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  Function()? onTap;
  bool readOnly;
  int? maxLines;
  int? minLines;
  String? textButton;
  VoidCallback buttonOnTap;
  EdgeInsets? edgeInsets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets ?? const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label.isNotEmpty)
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.blueSecondary,
                fontWeight: FontWeight.w600,
              ),
            )
          else
            const SizedBox.shrink(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  enabled: enable,
                  controller: controller,
                  validator: validator,
                  onChanged: onChanged,
                  obscureText: obscureText,
                  autovalidateMode: autoValidateMode,
                  keyboardType: keyboardType,
                  inputFormatters: inputFormatters,
                  onTap: onTap,
                  readOnly: readOnly,
                  minLines: minLines,
                  maxLines: maxLines,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.white,
                    hintText: placeholder,
                    contentPadding: const EdgeInsets.only(
                      top: 5,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    alignLabelWithHint: true,
                    counterText: '',
                    errorMaxLines: 2,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    floatingLabelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: !enable ? Colors.black54 : AppColors.primary,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: AppColors.grey,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: AppColors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: AppColors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: AppColors.grey,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    suffixIcon: sufixIcon,
                    prefixIcon: prefixIcon,
                  ),
                ),
              ),
              AppBox.w10,
              if (textButton != null)
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: SizedBox(
                    height: 40,
                    child: AppButtonShadowWhiteR10(
                      text: textButton!,
                      onPressed: buttonOnTap,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
