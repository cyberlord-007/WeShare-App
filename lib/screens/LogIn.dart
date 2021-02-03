import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weshare_app/constants.dart';
import 'package:weshare_app/screens/SignUp.dart';
import 'package:weshare_app/widgets/TextFieldDecoration.dart';
import 'package:weshare_app/widgets/UiButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogIn extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email;
  String password;

  void handleChange() {
    print(email);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./assets/avatar.png'),
                    radius: 80,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: TextFieldDecoration(
                      'Enter your email...', 'Email', Icons.mail),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: TextFieldDecoration(
                      'Type your password here', 'Password', Icons.lock),
                ),
                SizedBox(height: 20),
                uiButton(5, 50, 200, 'LOG IN', 30, kPrimaryColor, handleChange),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUp.id);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
