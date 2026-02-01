import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCrediteCard extends StatefulWidget {
  const CustomCrediteCard({super.key, required this.formKey, required this.autovalidateMode});

   final GlobalKey<FormState> formKey ;
   final AutovalidateMode autovalidateMode ;

  @override
  State<CustomCrediteCard> createState() => _CustomCrediteCardState();
}

class _CustomCrediteCardState extends State<CustomCrediteCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;
  
  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       CreditCardWidget(
        cardBgColor :Colors.black,
       cardNumber: cardNumber, 
       expiryDate: expiryDate, 
       cardHolderName: cardHolderName, 
       cvvCode: cvvCode, 
       showBackView: showBackView, 
       isHolderNameVisible: true,
       onCreditCardWidgetChange: (value){}),
       CreditCardForm(
        cardHolderValidator: (value) => (cardHolderName.isEmpty) ? 'Enter Valid Name' : null,
        autovalidateMode: widget.autovalidateMode,
        cardNumber: cardNumber,
        expiryDate: expiryDate, 
        cardHolderName: cardHolderName, 
        cvvCode: cvvCode, 
        onCreditCardModelChange: onCreditCardModelChange,
        formKey: widget.formKey)
      ],
    );
  }
}