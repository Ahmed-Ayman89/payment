import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/widget/My_cart_viewBody.dart';
import 'package:flutter_application_1/screen/widget/my_Appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: 'My cart',),
      body: MyCartViewbody(),
    );
  }
}

