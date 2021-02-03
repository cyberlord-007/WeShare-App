import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomAppbar.dart';

class Feeds extends StatefulWidget {
  static String id = 'feeds_screen';

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add_circled,
              size: 30,
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill, size: 30),
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}
