import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/cancelbooking.dart';
import 'package:sample_ui/Screens/homepage.dart';
import 'package:sample_ui/Screens/homepage1.dart';

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
        title: const Text("Hotel Booking Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            Row(
              children: const [
                Text("Monsoon Grande",style: TextStyle(fontSize: 23,backgroundColor: Color.fromARGB(235, 224, 191, 143),),),
              ],
            ),
            const SizedBox(height: 35,),
              Row(
              children: const [
                Text("ChekIn:   22-9-23(10.30)",style: TextStyle(fontSize: 23),),
              ],
            ),
             const SizedBox(height: 15,),
             Row(
              children: const [
                Text("ChekOut:   24-9-23(12.30)",style: TextStyle(fontSize: 23),),
              ],
            ),
            const SizedBox(height: 15,),
             Row(
              children: const [
                Text("Adults: 2",style: TextStyle(fontSize: 23),),
              ],
            ),
             const SizedBox(height: 15,),
             Row(
              children: const [
                Text("Children: 2",style: TextStyle(fontSize: 23),),
              ],
            ),
             const SizedBox(height: 15,),
             Row(
              children: const [
                Text("Rooms: 1",style: TextStyle(fontSize: 23),),
              ],
            ),
            
            ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const HomePage(),
                      ),
                    );
                }, child: const Text("Done")),
               
            ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const CancelBooking(),
                      ),
                    );
                }, child: const Text("Cancel The Trip")),
          ],
        ),
      ),
    );
  }
}