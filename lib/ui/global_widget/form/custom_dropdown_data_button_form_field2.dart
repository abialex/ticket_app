// ignore_for_file: must_be_immutable, inference_failure_on_function_return_type, lines_longer_than_80_chars

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/ui/global_widget/app_box.dart';
import 'package:ticket_app/ui/global_widget/button/app_button_shadow_white_r_10.dart';

class CustomDropdownDataButtonFormField2<T> extends StatelessWidget {
  CustomDropdownDataButtonFormField2({
    required this.items,
    required this.displayFunction,
    required this.textButton,
    required this.buttonOnTap,
    this.placeholder = '',
    this.label = '',
    this.validator,
    this.onChanged,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.defaultValue,
    super.key,
  });

  final List<T> items;
  String placeholder;
  String label;
  final String Function(T) displayFunction;
  final T? defaultValue;
  Function(T?)? onChanged;
  FormFieldValidator<T>? validator;
  AutovalidateMode autoValidateMode;
  Widget? sufixIcon;
  String textButton;
  VoidCallback buttonOnTap;

  @override
  Widget build(BuildContext context) {
    final selectedValue = defaultValue != null && items.contains(defaultValue) ? defaultValue : null;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.blueSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DropdownButtonFormField2<T>(
                  isExpanded: true,
                  isDense: false,
                  validator: validator,
                  onChanged: onChanged,
                  autovalidateMode: autoValidateMode,
                  value: selectedValue,
                  items: items
                      .map(
                        (item) => DropdownMenuItem<T>(
                          value: item,
                          child: Text(
                            displayFunction(item),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.dark,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                      .toList(),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.white,
                    hintText: ' $placeholder',
                    contentPadding: EdgeInsets.zero,
                    counterText: '',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
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
                  ),
                ),
              ),
              AppBox.w10,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SizedBox(
                  height: 40,
                  child: AppButtonShadowWhiteR10(
                    text: textButton,
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
