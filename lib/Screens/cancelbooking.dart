import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/homepage.dart';
import 'package:sample_ui/Screens/hotelbooking.dart';

class CancelBooking extends StatefulWidget {
  const CancelBooking({super.key});

  @override
  State<CancelBooking> createState() => _CancelBookingState();
}

class _CancelBookingState extends State<CancelBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        title: Text("Cancel Booking"),
       ),
       body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Destination: Taj Mahal",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          SizedBox(height: 8,),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
           SizedBox(height: 19,),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>HomePage()),
      );
   }, child: Text("Cancell This Booking"))
        ],
       )
    );
  }
}