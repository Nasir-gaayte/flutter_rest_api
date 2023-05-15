import 'package:fetch_data_from_api/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:fetch_data_from_api/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const IndexPageState(),
    );
  }
}
