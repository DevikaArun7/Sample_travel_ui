import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/map.dart';
import 'package:sample_ui/Screens/payment.dart';

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
        title: Text("Hotels"),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text("Mrs Li's Home",style: TextStyle(fontSize: 23),)),
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Container(
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
                width: 120,
                height: 100,
              ),
              SizedBox(width: 5,),
                Container(
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img2.jpg"),
                width: 120,
                height: 100,
              ),
              SizedBox(width: 5,),
                Container(
                child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
                width: 120,
                height: 100,
              ),
              SizedBox(width: 10,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Color.fromARGB(255, 172, 202, 226),
              width: 300,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Featuring city views, Mrs Lis Home has accommodation with a garden and a balcony,around 5.9 miles from Shanghai Train Station"),
              )),
          ),
          Text("Price:For 2 Night -->1400"),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>PaymentScreen()),
      );
    }, child: Text("Book Now",)),
          ElevatedButton(onPressed: (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>MapPage()),
      );
    }, child: Text("Show On Map"))
        ],
      ),
      
    );
  }
}  