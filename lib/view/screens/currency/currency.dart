import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String? selectedCurrency;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Select Your Currency",
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          currency("INR", "Indian Rupee", "assets/img/india.jpg"),
          currency("USD", "United States Dollar", "assets/img/USD.png"),
          currency("CAD", "Canadian Dollar", "assets/img/CAD.png"),
          currency("JPY", "Japanese Yen", "assets/img/jpy.jpg"),
          currency("EUR", "Euro", "assets/img/euro.png"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Container(
              height: height / 15,
              width: width / 1.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Confirm",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget currency(String currencyCode, String currencyName, String imagePath) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(
        currencyCode,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(currencyName),
      trailing: Radio<String>(
        value: currencyCode,
        groupValue: selectedCurrency,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value;
          });
        },
      ),
      onTap: () {
        setState(() {
          selectedCurrency = currencyCode;
        });
      },
    );
  }
}
