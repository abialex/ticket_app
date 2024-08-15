// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/ui/global_widget/input_text/input_form_01/base_text_form_field.dart';

class AppInputTextPasswordFormField extends StatelessWidget {
  AppInputTextPasswordFormField({
    required this.controller,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.label,
    this.obscureText = false,
    this.validator,
    super.key,
  });
  TextEditingController controller;
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? label;
  bool obscureText;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomTextFormField(
        controller: controller,
        label: label ?? '',
        obscureText: obscureText,
        placeholder: placeHolderText ?? '',
        sufixIcon: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
        validator: validator,
      ),
    );
  }
}
