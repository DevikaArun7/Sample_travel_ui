import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/cancelbooking.dart';
import 'package:sample_ui/Screens/homepage.dart';
import 'package:sample_ui/Screens/homepage1.dart';
import 'package:sample_ui/Screens/hotelbooking.dart';
import 'package:sample_ui/Screens/trainbooking.dart';

class BothBooking extends StatefulWidget {
  const BothBooking({super.key});

  @override
  State<BothBooking> createState() => _BothBookingState();
}

class _BothBookingState extends State<BothBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.amber,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => HotelBooking()),
                );
                },title: Center(child: Text("Hotel Booking",style:TextStyle(color: Color.fromARGB(208, 2, 113, 204)),)),
              ),
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.amber,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => TrainBooking()),
                );
                },title: Center(child: Text("Train Booking",style:TextStyle(color: Color.fromARGB(208, 2, 113, 204)),)),
              ),
            ),
          ),
          SizedBox(height: 35,),
         Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.amber,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => HomePage()),
                );
                },title: Center(child: Text("Finish Booking",style:TextStyle(color: Color.fromARGB(208, 2, 113, 204)),)),
              ),
            ),
          ),
           SizedBox(height: 35,),
         Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.amber,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => CancelBooking()),
                );
                },title: Center(child: Text("Cancel The Trip",style:TextStyle(color: Color.fromARGB(208, 2, 113, 204)),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}