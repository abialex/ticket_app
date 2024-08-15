// ignore_for_file: must_be_immutable, inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:ticket_app/ui/global_widget/form/custom_dropdown_form_field.dart';

class AppInputDropdownTexFormField extends StatelessWidget {
  AppInputDropdownTexFormField({
    required this.items,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.label,
    this.onChanged,
    super.key,
  });
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? label;
  List<String> items;
  Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomDropdownFormField(
        items: items,
        label: label ?? '',
        placeholder: placeHolderText ?? '',
        onChanged: onChanged,
      ),
    );
  }
}
