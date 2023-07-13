import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/cancelbooking.dart';
import 'package:sample_ui/Screens/homepage.dart';
import 'package:sample_ui/Screens/mybooking.dart';

class HotelBookingDetails extends StatefulWidget {
  const HotelBookingDetails({super.key});

  @override
  State<HotelBookingDetails> createState() => _HotelBookingDetailsState();
}

class _HotelBookingDetailsState extends State<HotelBookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        title: Text("Hotel Booking Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Monsoon Grande",style: TextStyle(fontSize: 23,backgroundColor: Color.fromARGB(235, 224, 191, 143),),),
              ],
            ),
            SizedBox(height: 35,),
              Row(
              children: [
                Text("ChekIn:   22-9-23(10.30)",style: TextStyle(fontSize: 23),),
              ],
            ),
             SizedBox(height: 15,),
             Row(
              children: [
                Text("ChekOut:   24-9-23(12.30)",style: TextStyle(fontSize: 23),),
              ],
            ),
            SizedBox(height: 15,),
             Row(
              children: [
                Text("Adults: 2",style: TextStyle(fontSize: 23),),
              ],
            ),
             SizedBox(height: 15,),
             Row(
              children: [
                Text("Children: 2",style: TextStyle(fontSize: 23),),
              ],
            ),
             SizedBox(height: 15,),
             Row(
              children: [
                Text("Rooms: 1",style: TextStyle(fontSize: 23),),
              ],
            ),
            
            ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>HomePage(),
                      ),
                    );
                }, child: Text("Done")),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>CancelBooking(),
                      ),
                    );
                }, child: Text("For cancel this trip")),
          ],
        ),
      ),
    );
  }
}