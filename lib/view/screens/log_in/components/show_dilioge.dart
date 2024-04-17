

import 'package:flutter/material.dart';

void showDialogBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Password Error !"),
        content: Text("Password don't macth."),
        actions: <Widget>[
          TextButton(
            child: Text("OK",style: TextStyle(color: Colors.green),),
            onPressed: () {
              Navigator.of(context).pop(); // Dismiss the dialog
            },
          ),
        ],
      );
    },
  );
}

void showDialogBoxnull(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Null Error !"),
        content: Text("Something is  Empty in Signup Form."),
        actions: <Widget>[
          TextButton(
            child: Text("OK",style: TextStyle(color: Colors.green),),
            onPressed: () {
              Navigator.of(context).pop(); // Dismiss the dialog
            },
          ),
        ],
      );
    },
  );
}
