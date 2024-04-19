import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import 'components/pdfDesign.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return PdfPreview(
      build: (format) {
        return generatePdf();
      },
    );
  }
}
