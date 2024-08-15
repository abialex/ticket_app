// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/ui/global_widget/form/custom_text_form_field.dart';

class AppInputAreaTextFormField extends StatelessWidget {
  AppInputAreaTextFormField({
    this.controller,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.label,
    this.initialValue,
    this.enabled = true,
    this.onChange,
    this.maxLines,
    this.validator,
    super.key,
  });
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? label;
  String? initialValue;
  bool enabled;
  void Function(String)? onChange;
  int? maxLines;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 500),
      child: CustomTextFormField(
        validator: validator,
        maxLines: maxLines,
        controller: controller,
        initialValue: initialValue,
        label: label ?? '',
        placeholder: placeHolderText ?? '',
        enable: enabled,
        onChanged: onChange,
      ),
    );
  }
}
