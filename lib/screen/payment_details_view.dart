
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/cusstom_btn_widget.dart';
import 'package:flutter_application_1/screen/thank_you_view.dart';
import 'package:flutter_application_1/screen/widget/cusstom_credit_Card.dart';
import 'package:flutter_application_1/screen/widget/my_Appbar.dart';
import 'package:flutter_application_1/screen/widget/payment_details_view_body.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: 'payment details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              PaymentDetailsViewBody(),
              CustomCrediteCard(formKey: formKey, autovalidateMode: autovalidateMode,),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Pay',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    print('done');
                  } else {
                     autovalidateMode = AutovalidateMode.always;
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder:  (_) => const ThankYouView()));
                      });
                  }
                },
                backgroundColor: Colors.black,
                width: 350,
                height: 73,
                borderRadius: 15,
                textColor: Colors.white,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );

  }
}
