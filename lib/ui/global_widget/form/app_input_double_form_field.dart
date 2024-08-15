// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
import 'package:ticket_app/ui/global_widget/form/custom_text_form_field.dart';

class AppInputDoubleFormField extends StatelessWidget {
  AppInputDoubleFormField({
    required this.controller,
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
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomTextFormField(
        padding: padding,
        controller: controller,
        label: label ?? '',
        enable: enabled,
        placeholder: placeHolderText ?? '',
        readOnly: readOnly,
        keyboardType: TextInputType.number,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [
          NumberTextInputFormatter(
            integerDigits: 10,
            decimalDigits: 2,
            maxValue: '1000000000.00',
            groupDigits: 3,
            overrideDecimalPoint: true,
            //insertDecimalDigits: true,
          ),
        ],
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
