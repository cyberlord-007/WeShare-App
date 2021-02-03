import 'package:flutter/material.dart';
import '../constants.dart';

InputDecoration TextFieldDecoration(
    String hintText, String labelText, IconData iconType) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white54),
      labelText: labelText,
      suffixIcon: Icon(
        iconType,
        color: kPrimaryColor,
      ),
      labelStyle: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: kPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ));
}
