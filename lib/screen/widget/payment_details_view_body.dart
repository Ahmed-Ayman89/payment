import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/widget/cheakList_widget.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  int selected = 0;

  List<String> images = [
    'assets/SVGRepo_iconCarrier.svg',
    'assets/Group.svg',
    'assets/Group3.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CheakListView(   
            images: images,
            activeIndex: selected,
            onItemSelected: (index) {
              setState(() {
                selected = index;
              });
            },
          ),
        ),
      ],
    );
  }
}

