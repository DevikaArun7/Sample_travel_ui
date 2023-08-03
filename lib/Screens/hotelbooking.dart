import 'package:flutter/material.dart';

import 'hotelbookdetails.dart';
import 'map.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({super.key});

  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        title: const Text("Hotels"),
      ),
      body:Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(child: Text("Mrs Li's Home",style: TextStyle(fontSize: 23),)),
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              SizedBox(
                width: 120,
                height: 100,
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
              ),
              const SizedBox(width: 5,),
                SizedBox(
                width: 120,
                height: 100,
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img2.jpg"),
              ),
              const SizedBox(width: 5,),
                SizedBox(
                width: 120,
                height: 100,
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: const Color.fromARGB(255, 172, 202, 226),
              width: 300,
              height: 80,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Featuring city views, Mrs Lis Home has accommodation with a garden and a balcony,around 5.9 miles from Shanghai Train Station"),
              )),
          ),
          const Text("Price:For 2 Night -->1400"),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const HotelBookingDetails()),
      );
    }, child: const Text("Book Now",)),
          ElevatedButton(onPressed: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) =>const MapPage()),
      );
    }, child: const Text("Show On Map"))
        ],
      ),
      
    );
  }
}  