import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/payment_details_view.dart';
import 'package:flutter_application_1/core/cusstom_btn_widget.dart';
import 'package:flutter_application_1/screen/widget/orderInfoItem.dart';

class MyCartViewbody extends StatelessWidget {
  const MyCartViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Column(
        children: [
          const SizedBox(height: 25,),
         Center(
          child: Image.asset('assets/Group 6.png'),),
          const  SizedBox(height: 25,),
          Orderinfoitem(title: 'Orderinfoitem', value: '42.97',),
          const SizedBox(height: 4,),
           Orderinfoitem(title: 'Discount', value: '0',),
           const SizedBox(height: 4,),
            Orderinfoitem(title: 'Shipping', value: '8',),
            Divider(color: Colors.black,thickness: 1,),
            TotalPrice(title: 'Total' , value: '50.97',),
            const SizedBox(height: 25,),
            CustomButton(
               text: 'Confirmation',
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PaymentDetailsView(),
    ),
  );
},

               width: 350,
               height: 73,
               borderRadius: 15,
               backgroundColor: const Color(0xFF34A853), 
               child: 
                 Text('Complete Payment',style: TextStyle(color: Colors.black,fontSize: 15),)
             )

        ],
      ),
    );
  }
}