import 'package:fetch_data_from_api/pages/index.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'add_product.dart';
import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listed Product From Api'),
        ),
        backgroundColor: primary,
      ),
      body: x == 0
          ? const MenuScreen()
          : x == 1
              ? const IndexPageState()
              : const AddProductScreen(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            x = value;
            setState(() {});
          },
          iconSize: 40,
          currentIndex: x,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                ),
                label: 'Product'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: 'Add')
          ]),
    );
  }
}
