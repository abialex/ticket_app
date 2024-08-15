// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/input_text/input_form_01/base_text_form_field.dart';

class AppSearchTextFormField extends StatelessWidget {
  AppSearchTextFormField({
    required this.controller,
    this.prefixIcon,
    this.sufixIcon,
    this.placeHolderText,
    this.labelText,
    this.onChanged,
    this.searchAction,
    super.key,
  });
  TextEditingController controller;
  Widget? prefixIcon;
  Widget? sufixIcon;
  String? placeHolderText;
  String? labelText;
  void Function(String)? onChanged;
  void Function()? searchAction;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomTextFormField(
        controller: controller,
        label: labelText ?? 'Buscar',
        sufixIcon: GestureDetector(
          onTap: searchAction,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(5),
            ),
            child: sufixIcon ?? const Icon(Icons.search, color: Colors.white),
          ),
        ),
        placeholder: placeHolderText ?? '',
        onChanged: onChanged,
      ),
    );
  }
}
