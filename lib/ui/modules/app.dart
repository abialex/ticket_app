import 'package:flutter/material.dart';
import 'package:ticket_app/core/utils/app_colors.dart';
import 'package:ticket_app/domain/services/printer_service.dart';
import 'package:ticket_app/ui/global_widget/app_box.dart';
import 'package:ticket_app/ui/global_widget/app_text_style.dart';
import 'package:ticket_app/ui/global_widget/button/app_button_blue_r_30.dart';
import 'package:ticket_app/ui/modules/dialogs/combinacion_de_teclados_dialog.dart';
import 'package:ticket_app/ui/modules/dialogs/seperador_libro_dialog.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final printerService = PrinterService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueSunat,
        centerTitle: true,
        title: const Text(
          "Lista de Acciones para la Impresora",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CardOptions(
                title: "Separador de Libros",
                description: 'Imprime una boleta para un "separador de libros" que incluye un título y una frase del libro',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SeparadorLibroDialog();
                    },
                  );
                },
              ),
              CardOptions(
                title: "Atajos de Teclado",
                description:
                    'Un "atajo de teclado" es una combinación rápida de teclas que ejecuta una acción específica en una aplicación o sistema operativo.',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CombinacionTecladoDialog();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardOptions extends StatelessWidget {
  const CardOptions({
    super.key,
    required this.onPressed,
    required this.title,
    required this.description,
  });
  final void Function() onPressed;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 0.2),
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.dark.withOpacity(0.75),
            spreadRadius: -2,
            blurRadius: 5,
            offset: const Offset(1.5, 1.5),
          ),
        ],
      ),
      child: Column(
        children: [
          AppTextGlobal.mediumText(text: title, fontWeight: FontWeight.bold),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    AppTextGlobal.lightText(
                      text: description,
                      maxLines: 8,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              AppBox.w10,
              Expanded(
                child: Column(
                  children: [
                    AppButtonBlueR30(onPressed: onPressed, text: "Go"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
