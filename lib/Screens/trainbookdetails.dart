import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/both_booking.dart';

class TrainBookingDetails extends StatefulWidget {
  const TrainBookingDetails({super.key});

  @override
  State<TrainBookingDetails> createState() => _TrainBookingDetailsState();
}

class _TrainBookingDetailsState extends State<TrainBookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        title: Text("Train Booking Details"),
       ),
       body:ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Mangalore Exp",style: TextStyle(fontSize: 23,color: Color(0xCBDC4601),
                      ),
                      ),
                       SizedBox(width: 25,),
                        Text("1.20-8.33",style: TextStyle(fontSize: 23,color: Colors.white,
                      ),
                      )
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      Text("Manu",style: TextStyle(fontSize: 23,color: Colors.black,
                      ),
                      ),
                      SizedBox(width: 15,),
                      Text("S6,7",style: TextStyle(fontSize: 23,color: Colors.green,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                   Row(
                    children: [
                      Text("Kavya",style: TextStyle(fontSize: 23,color: Colors.black,
                      ),
                      ),
                      SizedBox(width: 15,),
                      Text("S6,8",style: TextStyle(fontSize: 23,color: Colors.green,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      Text("Payment Amount",style: TextStyle(fontSize: 23,color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("328",style: TextStyle(fontSize: 23,color: Colors.black,
                      ),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>BothBooking(),
                      ),
                    );
                 }, child: Text("Done"))
                ],
              ),
            ),
          ),
        ],
       ) ,
        
    );
  }
}