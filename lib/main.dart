import 'package:flutter/material.dart';
import 'package:weshare_app/screens/Feeds.dart';
import 'package:weshare_app/screens/SignUp.dart';
import './screens/LogIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeShare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LogIn.id,
      routes: {
        LogIn.id: (context) => LogIn(),
        SignUp.id: (context) => SignUp(),
        Feeds.id: (context) => Feeds(),
      },
    );
  }
}
