// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/ui/global_widget/form/custom_text_form_field.dart';

class AppInputTextFormField extends StatelessWidget {
  AppInputTextFormField({
    this.controller,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.label,
    this.initialValue,
    this.enabled = true,
    this.validator,
    this.onChanged,
    this.readOnly = false,
    this.padding,
    super.key,
  });
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? label;
  String? initialValue;
  bool enabled;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;
  bool readOnly;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 500),
      child: CustomTextFormField(
        padding: padding,
        controller: controller,
        initialValue: initialValue,
        label: label ?? '',
        enable: enabled,
        placeholder: placeHolderText ?? '',
        validator: validator,
        onChanged: onChanged,
        readOnly: readOnly,
        autoValidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
