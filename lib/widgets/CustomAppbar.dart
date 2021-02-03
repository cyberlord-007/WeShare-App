import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weshare_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Icon(
      CupertinoIcons.camera,
      color: Colors.black45,
      size: 30,
    ),
    title: Text(
      'WeShare',
      style: GoogleFonts.satisfy(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black45),
    ),
  );
}
