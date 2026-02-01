import 'package:flutter/material.dart';

class Orderinfoitem extends StatelessWidget {
  final String title;
  final String value;
  const Orderinfoitem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,textAlign: TextAlign.center,),
        Spacer(),
        Text(value,textAlign: TextAlign.center,),
      ],
    );
  }
}
class TotalPrice extends StatelessWidget {
   final String title;
  final String value;
  const TotalPrice({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,textAlign: TextAlign.center,),
        Spacer(),
        Text(value,textAlign: TextAlign.center,),
      ],
    );
  }
}