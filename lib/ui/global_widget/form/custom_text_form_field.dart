// ignore_for_file: must_be_immutable, lines_longer_than_80_chars, inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket_app/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.controller,
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
    this.maxLines,
    this.initialValue,
    this.padding,
    super.key,
  });

  TextEditingController? controller;
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
  String? initialValue;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label.isNotEmpty)
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: !enable ? AppColors.grey : AppColors.blueSecondary,
                fontWeight: FontWeight.w600,
              ),
            )
          else
            const SizedBox.shrink(),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  enabled: enable,
                  controller: controller,
                  initialValue: initialValue,
                  validator: validator,
                  onChanged: onChanged,
                  obscureText: obscureText,
                  autovalidateMode: autoValidateMode,
                  keyboardType: keyboardType,
                  inputFormatters: inputFormatters,
                  onTap: onTap,
                  readOnly: readOnly,
                  maxLines: maxLines,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.white,
                    hintText: placeholder,
                    contentPadding: const EdgeInsets.only(
                      top: 7.5,
                      bottom: 17.5,
                      left: 10,
                      right: 10,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    alignLabelWithHint: true,
                    counterText: '',
                    errorMaxLines: 2,
                    //labelStyle:const TextStyle(
                    //  backgroundColor: Colors.transparent,
                    //  color: AppColors.blueAccent,
                    //  fontSize: 18,
                    //  fontWeight: FontWeight.bold,
                    //),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    floatingLabelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
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
            ],
          ),
        ],
      ),
    );
  }
}
