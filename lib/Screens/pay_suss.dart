import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/both_booking.dart';

class PaySussessfull extends StatefulWidget {
  const PaySussessfull({super.key});

  @override
  State<PaySussessfull> createState() => _PaySussessfullState();
}

class _PaySussessfullState extends State<PaySussessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/payment img.png")),
                color: Colors.amber,
              ),
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 20,),
          Text("Payment Successfull",style: TextStyle(fontSize: 23,color: Colors.white),),
          TextButton(onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BothBooking()),
    );
  }, child: Text("Next"))
        ],
      ),
    );
  }
}