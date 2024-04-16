import 'package:flutter/material.dart';

Widget textFieldBox(
    TextEditingController controller, String name, String lname) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      textInputAction: TextInputAction.next,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff059E2E), width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: name,focusColor: Color(0xff059E2E),
        label: Text(lname),
      ),
    ),
  );
}