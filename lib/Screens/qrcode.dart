import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/pay_suss.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/QR code img.png"),
              fit: BoxFit.cover
              )
            ),
            width: 200,
            height: 200,
           ),
           TextButton.icon(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>PaySussessfull()),
      );
    }, icon: Icon(Icons.arrow_forward), label: Text(""))
         ],
       ),
       
    );
  }
}

