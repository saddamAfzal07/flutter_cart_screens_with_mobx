import 'package:flutter/material.dart';
import 'package:flutter_cart_screens/controller/cart_controller.dart';
import 'package:flutter_cart_screens/features/product_list/product_lists.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<CartController>(
      create: (context) => CartController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(primaryColor: Colors.blue),
        home: const ProductList(),
      ),
    );
  }
}
