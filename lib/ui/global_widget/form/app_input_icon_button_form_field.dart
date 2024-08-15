// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/ui/global_widget/form/custom_text_button_form_field.dart';

class AppInputTextIconFormField extends StatelessWidget {
  AppInputTextIconFormField({
    required this.controller,
    required this.buttonOnTap,
    super.key,
    this.buttonText,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.label,
    this.initialValue,
    this.enabled = true,
    this.validator,
    this.onChanged,
    this.readOnly = false,
    this.edgeInsets,
  });
  TextEditingController controller;
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? label;
  String? initialValue;
  bool enabled;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;
  bool readOnly;
  String? buttonText;
  VoidCallback buttonOnTap;
  EdgeInsets? edgeInsets;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomTextButtonFormField(
        edgeInsets: edgeInsets,
        controller: controller,
        textButton: buttonText,
        buttonOnTap: buttonOnTap,
        label: label ?? '',
        enable: enabled,
        placeholder: placeHolderText ?? '',
        validator: validator,
        onChanged: onChanged,
        readOnly: readOnly,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        prefixIcon: prefixIcon,
        sufixIcon: sufixIcon,
      ),
    );
  }
}
