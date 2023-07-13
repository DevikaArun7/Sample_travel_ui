import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/cancelbooking.dart';
import 'package:sample_ui/Screens/homepage.dart';
import 'package:sample_ui/Screens/hotelbooking.dart';

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
              width: 350,
              height: 50,
            color: Colors.amber,
            child: Center(child: TextButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => HotelBooking()),
              );}, child: Text("Book Hotels"))),
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 350,
              height: 50,
            color: Colors.amber,
            child: Center(child: TextButton(onPressed: (){}, child: Text("Book Train"))),
            ),
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 350,
              height: 50,
            color: Colors.amber,
            child: Center(child: TextButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => HomePage()),
              );}, child: Text("Finish Booking"))),
            ),
          )
        ],
      ),
    );
  }
}