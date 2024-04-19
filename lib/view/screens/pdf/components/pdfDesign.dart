import 'dart:typed_data';
import 'dart:ui';

import 'package:budget_tracker_app/utils/transactionData.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as r;
import 'package:printing/printing.dart';

Future<Uint8List> generatePdf() async {
  final pdf = r.Document();

  var lato = await PdfGoogleFonts.latoBlack();
  final appIcon = await imageFromAssetBundle('assets/img/budget.png');

  pdf.addPage(r.Page(
    pageFormat: PdfPageFormat.a4,
    build: (context) => r.Column(children: [
      r.Row(children: [
        r.Container(
            height: 150,
            width: 100,
            decoration: r.BoxDecoration(
                color: PdfColors.blue900, shape: r.BoxShape.circle),
            child: r.Image(appIcon, height: 100)),
        r.SizedBox(width: 15),
        r.Column(crossAxisAlignment: r.CrossAxisAlignment.start, children: [
          r.Text("Expense Tracker",
              style: r.TextStyle(fontSize: 30, fontWeight: r.FontWeight.bold)),
          r.Text("Track All Your Expenses In a Go",
              style: r.TextStyle(fontSize: 15))
        ])
      ]),
      r.SizedBox(height: 20),
      r.Table(children: [
        r.TableRow(children: [
          r.Text("Sr.",
              textAlign: r.TextAlign.center,
              style: r.TextStyle(font: lato, fontSize: 15)),
          r.Text("Category",
              textAlign: r.TextAlign.center,
              style: r.TextStyle(font: lato, fontSize: 15)),
          r.Text("Amount",
              textAlign: r.TextAlign.center,
              style: r.TextStyle(font: lato, fontSize: 15)),
          r.Text("Income/Expense",
              textAlign: r.TextAlign.center,
              style: r.TextStyle(font: lato, fontSize: 15)),
          r.Text("Cash/Bank",
              textAlign: r.TextAlign.center,
              style: r.TextStyle(font: lato, fontSize: 15)),
        ]),
        r.TableRow(children: [
          r.SizedBox(
            height: 8,
          ),
          r.SizedBox(
            height: 8,
          )
        ]),
        ...List.generate(
          transactionData.length,
          (index) => r.TableRow(
              decoration: r.BoxDecoration(
                  color: (transactionData[index]['isExpense'])
                      ? PdfColors.white
                      : PdfColors.green.shade(0.1)),
              children: [
                r.Text("${index + 1}",
                    textAlign: r.TextAlign.center,
                    style: r.TextStyle(font: lato, fontSize: 15)),
                r.Text(transactionData[index]['category'],
                    textAlign: r.TextAlign.center,
                    style: r.TextStyle(font: lato, fontSize: 15)),
                r.Text(transactionData[index]['amount'],
                    textAlign: r.TextAlign.center,
                    style: r.TextStyle(font: lato, fontSize: 15)),
                r.Text(
                    (transactionData[index]['isExpense'])
                        ? "Expense"
                        : "Income",
                    textAlign: r.TextAlign.center,
                    style: r.TextStyle(font: lato, fontSize: 15)),
                r.Text(transactionData[index]['payment'],
                    textAlign: r.TextAlign.center,
                    style: r.TextStyle(font: lato, fontSize: 15)),
              ]),
        ),
      ]),
    ]),
  ));
  return await pdf.save();
}
