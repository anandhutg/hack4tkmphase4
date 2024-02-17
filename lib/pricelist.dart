import 'package:flutter/material.dart';

class pricelist extends StatefulWidget {
  const pricelist({Key? key}) : super(key: key);

  @override
  State<pricelist> createState() => _pricelistState();
}

class _pricelistState extends State<pricelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/pricelist.jpeg'),
    );
  }
}