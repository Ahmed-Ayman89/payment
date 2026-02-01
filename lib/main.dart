import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CartScreen(),
    );
  }
}

//step1
// paymentIntentObject create payment intent ( amount , currency)
//step2
//init payment sheet ( paymentIntentClientSecret )
// step3
// presentPaymentSheet ()
