import 'package:flutter/material.dart';

class UpdataProductScreen extends StatefulWidget {
  const UpdataProductScreen({super.key});

  @override
  State<UpdataProductScreen> createState() => _UpdataProductScreenState();
}

class _UpdataProductScreenState extends State<UpdataProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Column(
            children: const [
              Center(
                child: CircleAvatar(
                  foregroundImage: NetworkImage(''),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
