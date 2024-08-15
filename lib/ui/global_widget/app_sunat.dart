// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ticket_app/ui/global_widget/app_loader.dart';
// import 'package:ticket_app/ui/global_widget/input_text/input_form_02/input_text_action_base.dart';

// class AppSunatWidget extends StatelessWidget {
//   const AppSunatWidget({super.key, required this.onTap});

//   final void Function(SunatPersonaViewModel?) onTap;
//   @override
//   Widget build(BuildContext context) {
//     final formKey = GlobalKey<FormState>(); // Clave global para el formulario
//     final loaderCubit = context.read<LoaderCubit>();

//     return BlocProvider(
//       create: (context) => SunatCubit(),
//       child: BlocBuilder<SunatCubit, SunatState>(
//         builder: (context, state) {
//           final sunatCubit = context.read<SunatCubit>();
//           return Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     InputTextActionBase(
//                       iconData: Icons.search_outlined,
//                       isOnTap: false,
//                       label: "Consulta Sunat",
//                       inputFormatDeskptop: InputFormatDesktopEnum.numeros,
//                       maxlength: 8,
//                       hintText: "Ingrese dni de la persona",
//                       textInputType: TextInputType.number,
//                       validator: (value) => Validators.validateLength(value, 8),
//                       function: (value) async {
//                         if (formKey.currentState!.validate()) {
//                           final persona = await sunatCubit.getPersonaByDni(value);
//                           onTap(persona);
//                         } else {
//                           sunatCubit.initial();
//                         }
//                         return null;
//                       },
//                     ),
//                     Positioned(
//                       right: 55,
//                       top: 40,
//                       child: SvgPicture.asset(
//                         AppConstIcons.sunatLogo,
//                         height: 25,
//                       ),
//                     ),
//                   ],
//                 ),
//                 AppBox.h4,
//                 state
//                     .map(
//                       initial: (stt) {
//                         return const SizedBox.shrink();
//                       },
//                       loading: (stt) {
//                         loaderCubit.show();
//                         return const SizedBox.shrink();
//                       },
//                       sunatPersonaLoaded: (stt) {
//                         loaderCubit.hidden();
//                         return AppTextGlobal.labelLightText(
//                                 text: "SUNAT: ${stt.sunatPersona.nombres.isEmpty ? "Sin datos" : stt.sunatPersona.toString()} ")
//                             .animate()
//                             .fade();
//                       },
//                       failure: (stt) {
//                         loaderCubit.hidden();

//                         return AppTextGlobal.errorlightText(text: stt.error).animate().flip();
//                       },
//                     )
//                     .animate()
//                     .flip()
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
