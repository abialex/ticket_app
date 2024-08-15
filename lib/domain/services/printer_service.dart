// ignore_for_file: cascade_invocations, depend_on_referenced_packages

import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';

class PrinterService {
  String localIp = '';
  List<String> devices = [];
  bool isDiscovering = false;
  int found = -1;

  Future<List<int>> testTicket() async {
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    bytes += generator.text('Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ');
    bytes += generator.text('Special 1: àÀáó èÈ éÉ ûÛ üÜ çÇ ôÔ', styles: const PosStyles(codeTable: 'CP1252'));
    bytes += generator.text('Special 2: blåbærgrød', styles: const PosStyles(codeTable: 'CP1252'));

    bytes += generator.text('Bold text', styles: const PosStyles(bold: true));
    bytes += generator.text('Reverse text', styles: const PosStyles(reverse: true));
    bytes += generator.text('Underlined text', styles: const PosStyles(underline: true), linesAfter: 1);
    bytes += generator.text('Align left', styles: const PosStyles(align: PosAlign.left));
    bytes += generator.text('Align center', styles: const PosStyles(align: PosAlign.center));
    bytes += generator.text('Align right', styles: const PosStyles(align: PosAlign.right), linesAfter: 1);

    bytes += generator.row([
      PosColumn(
        text: 'col3',
        width: 3,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
      PosColumn(
        text: 'col6',
        width: 6,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
      PosColumn(
        text: 'col3',
        width: 3,
        styles: const PosStyles(align: PosAlign.center, underline: true),
      ),
    ]);

    bytes += generator.text('Text size 200%',
        styles: const PosStyles(
          height: PosTextSize.size2,
          width: PosTextSize.size2,
        ));

    // Print barcode
    final List<int> barData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 4];
    bytes += generator.barcode(Barcode.upcA(barData));

    bytes += generator.feed(2);
    bytes += generator.cut();
    return bytes;
  }

  Future<List<int>> CombinacionTeclado({required String combinacion, required String descripcion}) async {
    final profile = await CapabilityProfile.load();

    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    // Cabecera del recibo
    bytes += generator.text('"${combinacion.toUpperCase()}"',
        styles: const PosStyles(
          align: PosAlign.center,
          bold: true,
          height: PosTextSize.size3,
          width: PosTextSize.size3,
        ),
        linesAfter: 1);
    bytes += generator.text(descripcion,
        styles: const PosStyles(
          reverse: false,
          align: PosAlign.center,
        ));

    // Mensaje de agradecimiento
    bytes += generator.feed(1);

    bytes += generator.hr();

    bytes += generator.text('ATAJOS DE TECLADO', styles: const PosStyles(align: PosAlign.center, bold: true), linesAfter: 1);

    // Corte de papel
    bytes += generator.cut();

    return bytes;
  }

  Future<List<int>> separadorLibro({required String title, String? subTitle, required String descripcion}) async {
    final profile = await CapabilityProfile.load();

    final generator = Generator(PaperSize.mm80, profile);
    List<int> bytes = [];

    // Cabecera del recibo
    bytes += generator.text(title,
        styles: const PosStyles(
          align: PosAlign.center,
          bold: true,
          height: PosTextSize.size2,
          width: PosTextSize.size2,
        ),
        linesAfter: 1);
    bytes += generator.text(
      subTitle ?? '',
      styles: const PosStyles(
        reverse: false,
        align: PosAlign.center,
      ),
    );
    bytes += generator.feed(2);

    bytes += generator.hr();
    bytes += generator.feed(1);

    bytes += generator.text(
      '"$descripcion"',
      styles: const PosStyles(
        reverse: false,
        align: PosAlign.center,
        bold: true,
        fontType: PosFontType.fontA,
      ),
    );

    bytes += generator.feed(1);

    bytes += generator.hr();

    // bytes += generator.text('', styles: const PosStyles(align: PosAlign.center, bold: true), linesAfter: 1);

    // Corte de papel
    bytes += generator.cut();

    return bytes;
  }
}
