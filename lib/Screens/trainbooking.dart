import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TrainBooking extends StatefulWidget {
  const TrainBooking({super.key});

  @override
  State<TrainBooking> createState() => _TrainBookingState();
}

class _TrainBookingState extends State<TrainBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        title: Text("Trains"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("16347 Mangalore Exp",style:TextStyle(fontSize: 19,color: Colors.black),),
              ),
              SizedBox(width: 15,),
              Text("1.20 - 8.33",style:TextStyle(fontSize: 19,color: Colors.black),),
            ],
          ),
          Row(
            children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("3A"),
                            SizedBox(width: 10,),
                            Icon(Icons.monetization_on_outlined),
                            Text("575")
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("AVL 0019",style: TextStyle(color:Colors.black),)
                    ],
                  ),
                 
                  width: 110,
                  height: 95,
                  color: Color.fromARGB(255, 159, 181, 192),
                  
                ),
              ),
            ),
              SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("3A"),
                            SizedBox(width: 10,),
                            Icon(Icons.monetization_on_outlined),
                            Text("575")
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("AVL 0019",style: TextStyle(color:Colors.black),)
                    ],
                  ),
                 
                  width: 110,
                  height: 95,
                  color: Color.fromARGB(255, 159, 181, 192),
                  
                ),
              ),
            ),
             SizedBox(
             child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("3A"),
                            SizedBox(width: 10,),
                            Icon(Icons.monetization_on_outlined),
                            Text("575")
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("AVL 0019",style: TextStyle(color:Colors.black),)
                    ],
                  ),
                
                  width: 110,
                  height: 95,
                  color: Color.fromARGB(255, 159, 181, 192),
                  
                ),
             )
              ),
            ],
          )
        ],
      ),
    );
  }
}