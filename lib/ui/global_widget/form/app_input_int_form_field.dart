// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
import 'package:ticket_app/ui/global_widget/form/custom_text_form_field.dart';

class AppInputIntFormField extends StatelessWidget {
  AppInputIntFormField({
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

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: CustomTextFormField(
        controller: controller,
        label: label ?? '',
        enable: enabled,
        placeholder: placeHolderText ?? '',
        keyboardType: TextInputType.number,
        readOnly: readOnly,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [
          NumberTextInputFormatter(
            integerDigits: 10,
            decimalDigits: 0,
            maxValue: '1000000000',
            groupDigits: 3,
            //overrideDecimalPoint: true,
            //insertDecimalDigits: true,
          ),
        ],
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
