import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding textfieldBox(
    TextEditingController controller, String name, String lname) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff059E2E), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: name,
        labelText: lname,
      ),

    ),
  );
}