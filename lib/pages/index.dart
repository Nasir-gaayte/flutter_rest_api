import 'dart:convert';

import 'package:fetch_data_from_api/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/product.dart';
import '../network/prodcut_network.dart';
import '../theme/colors.dart';

class IndexPageState extends StatefulWidget {
  const IndexPageState({super.key});

  @override
  State<IndexPageState> createState() => _IndexPageStateState();
}

class _IndexPageStateState extends State<IndexPageState> {
  @override
  Widget build(BuildContext context) {
    var productcontroller = ProductController(ProductNetwork());

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listed Product From Api'),
        ),
        backgroundColor: primary,
      ),
      body: FutureBuilder<List<Products>>(
          future: productcontroller.fetchProductList(),
          builder: (context, x) {
            if (x.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (x.hasError) {
              return Center(
                child: Text('${x.error}'),
              );
            }

            return ListView.builder(
              itemBuilder: (context, index) {
                var pro = x.data?[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                        title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://weme.pythonanywhere.com${pro!.image}'))),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pro.name.toString().toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text('Pirce'),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  '\$ ${pro.price.toString()}',
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column()
                          ],
                        )
                      ],
                    )),
                  ),
                );
              },
              itemCount: x.data?.length,
            );
          }),
    );
  }
}
