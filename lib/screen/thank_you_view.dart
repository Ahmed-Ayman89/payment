
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/widget/my_Appbar.dart';
import 'package:flutter_application_1/screen/widget/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: 'Thank You'),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}