import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 5,
                  width: 5,
                  color: Colors.green,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 100, 50),
                  height: 5,
                  width: 5,
                  color: Colors.red,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 5,
                  width: 5,
                  color: Colors.pink,
                )),
          ],
        ),
      ),
    );
  }
}
