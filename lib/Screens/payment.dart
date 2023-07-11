import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/qrcode.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Payment"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                 decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/upi img.png"),
                  fit:BoxFit.cover
                  ),
                 ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("UPI",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
              ],
            ),

          ),
          Text("Scan the QR Using UPI app",style: TextStyle(fontSize: 19,color: Colors.grey),),
          SizedBox(height: 70,),
          Container(
            height: 150,
            width: 160,
            decoration:BoxDecoration(
              image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/google pay img.png"),
              fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(80),
              color: Colors.black,
            ) ,
          ),
          SizedBox(height: 35,),
          ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => QrCode()),
              );}, child: Text("GENERATE QR CODE"))
        ],
      ),
    );
  }
}