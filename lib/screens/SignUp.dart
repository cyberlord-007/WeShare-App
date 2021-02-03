import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weshare_app/screens/Feeds.dart';
import '../constants.dart';
import '../widgets/TextFieldDecoration.dart';
import '../widgets/UiButton.dart';

class SignUp extends StatefulWidget {
  static String id = 'signup_screen';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username;
  String email;
  String password;

  void handleChange() {
    Navigator.pushNamed(context, Feeds.id);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
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
                    username = value;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: TextFieldDecoration(
                      'Create a username...', 'Username', Icons.person),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
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
                uiButton(
                    5, 50, 200, 'SIGN UP', 30, kPrimaryColor, handleChange),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
