import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/cancel_booking.dart';
import 'package:sample_ui/Screens/hotelbooking.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        title: Text("Booking Details"),
       ),
       body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Name:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Email:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Date:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Members:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Departure from:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Destination:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Going thougth:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Hotel Details:",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          SizedBox(height: 19,),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>CancelBookingPage()),
      );
   }, child: Text("Cancell This Booking"))
        ],
       )
    );
  }
}