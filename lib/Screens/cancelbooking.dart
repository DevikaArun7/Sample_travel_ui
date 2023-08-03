import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/home_screen.dart';
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
          const Row(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("For Cancel The Trip",style: TextStyle(fontSize: 23),),
            )
          ],),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Destination: Taj Mahal",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          const SizedBox(height: 8,),
           const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
           const SizedBox(height: 19,),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const HomeScreen()),
      );
   }, child: const Text("Cancell This Booking"))
        ],
       )
    );
  }
}