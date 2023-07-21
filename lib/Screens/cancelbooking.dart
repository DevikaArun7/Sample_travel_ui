import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/homepage1.dart';

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
       ),
       body: Column(
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("For Cancel The Trip",style: TextStyle(fontSize: 23),),
            )
          ],),
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