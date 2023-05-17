import 'package:fetch_data_from_api/data/product.dart';
import 'package:fetch_data_from_api/theme/colors.dart';
import 'package:fetch_data_from_api/controller/product_controller.dart';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return FormField<Products>(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Product Name', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              //if user click this button, user can upload image from gallery
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.image),
                  Text('From Gallery'),
                ],
              ),
            ),
            ElevatedButton(
              //if user click this button. user can upload image from camera
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.camera),
                  Text('From Camera'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Product Category', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Product Prices', border: OutlineInputBorder()),
            ),
          ],
        ),
      );
    });
  }
}
