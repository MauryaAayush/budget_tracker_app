

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

void showDialogBoxerror(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Error !"),
        content: Text("Something is  wrong"),
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

void showDialogBoxlogin(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Error !"),
        content: Text("This Account is Alreadey exist  \n You Already Have Account "),
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

void showDialogBoxusernotfound(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Error !"),
        content: Text("User Not found"),
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