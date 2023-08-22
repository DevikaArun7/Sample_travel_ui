import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/Screens/flightplanning.dart';
import 'package:phoneauth_firebase/Screens/hotelbooking.dart';
import 'package:phoneauth_firebase/Screens/trainplanning.dart';
import 'package:phoneauth_firebase/screens/home_screen.dart';

class BothBooking extends StatefulWidget {
  const BothBooking({super.key});

  @override
  State<BothBooking> createState() => _BothBookingState();
}

class _BothBookingState extends State<BothBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          const SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 191, 135, 201),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const FlightPlanning()),
                );
                },title: const Center(child: Text("Flight Booking",style:TextStyle(color: Colors.black),)),
              ),
            ),
          ),
          const SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 191, 135, 201),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const TrainPlanning()),
                );
                },title: const Center(child: Text("Train Booking",style:TextStyle(color:Colors.black),)),
              ),
            ),
          ),
          // const SizedBox(height: 35,),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Container(
          //     width: double.infinity,
          //     height: 50,
          //     color: Color.fromARGB(255, 191, 135, 201),
          //     child: ListTile(
          //       onTap: () {
          //         Navigator.push(
          //         context,
          //         MaterialPageRoute(builder:(context) => const HotelBooking()),
          //       );
          //       },title: const Center(child: Text("Hotel Booking",style:TextStyle(color:Colors.black),)),
          //     ),
          //   ),
          // ),
          const SizedBox(height: 35,),
         Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 191, 135, 201),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const HomeScreen()),
                );
                },title: const Center(child: Text("Finish Booking",style:TextStyle(color: Colors.black),)),
              ),
            ),
          ),
           const SizedBox(height: 35,),
        //  Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: Container(
        //       width: double.infinity,
        //       height: 50,
        //       color: Colors.amber,
        //       child: ListTile(
        //         onTap: () {
        //           Navigator.push(
        //           context,
        //           MaterialPageRoute(builder:(context) => const CancelBooking()),
        //         );
        //         },title: const Center(child: Text("Cancel The Trip",style:TextStyle(color: Color.fromARGB(208, 2, 113, 204)),)),
        //       ),
        //     ),
        //   ),
        ],
      ),
    );
  }
}