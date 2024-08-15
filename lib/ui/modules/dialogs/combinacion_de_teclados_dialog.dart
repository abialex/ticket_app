import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_esc_pos_network/flutter_esc_pos_network.dart';
import 'package:ticket_app/core/utils/validators/validators.dart';
import 'package:ticket_app/domain/services/printer_service.dart';
import 'package:ticket_app/ui/global_widget/app_box.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';
import 'package:ticket_app/ui/global_widget/button/app_button_blue.dart';
import 'package:ticket_app/ui/global_widget/button/app_button_white.dart';
import 'package:ticket_app/ui/global_widget/dialog/dialog_message/cubit/dialog_message_cubit.dart';
import 'package:ticket_app/ui/global_widget/form/app_input_area_text_form_field.dart';
import 'package:ticket_app/ui/global_widget/form/app_input_text_form_field.dart';

class CombinacionTecladoDialog extends StatelessWidget {
  CombinacionTecladoDialog({super.key});

  final combinacionController = TextEditingController();
  final subTitleController = TextEditingController();
  final descripcionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final printerService = PrinterService();

    return AlertDialog(
      title: AppTextGlobal.labelLightText(text: "Combinacion de teclado"),
      content: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  AppInputTextFormField(
                    label: 'Combinación',
                    validator: Validators.validateNotEmpty,
                    controller: combinacionController,
                  ),
                  // AppInputAreaTextFormField(
                  //   label: 'Sub title',
                  //   maxLines: 2,
                  //   controller: subTitleController,
                  // ),
                  AppInputAreaTextFormField(
                    label: 'Descripción',
                    maxLines: 5,
                    validator: Validators.validateNotEmpty,
                    controller: descripcionController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          children: [
            Expanded(
              child: AppButtonWhite(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  text: 'Cancelar'),
            ),
            AppBox.w10,
            Expanded(
              child: AppButtonBlue(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      final printer = PrinterNetworkManager('192.168.0.2');
                      final isConnected = await printer.connect();
                      if (isConnected == PosPrintResult.success) {
                        final ticket = await printerService.CombinacionTeclado(
                          combinacion: combinacionController.text,
                          descripcion: descripcionController.text,
                        );
                        final printing = await printer.printTicket(ticket);
                        print(printing.msg);
                        await printer.disconnect();
                      } else {
                        context.read<DialogMessageCubit>().showErrorAlert(texto: 'La impresora no se encuentra activa');
                      }
                      Navigator.of(context).pop();
                    }
                  },
                  text: 'Imprimir'),
            ),
          ],
        )
      ],
    );
  }
}
