
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/trainbooking.dart';

import 'hotelbooking.dart';

class PlanYourTrip2 extends StatefulWidget {
  const PlanYourTrip2({super.key});

  @override
  State<PlanYourTrip2> createState() => _PlanYourTrip2State();
}

class _PlanYourTrip2State extends State<PlanYourTrip2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Let's Plan Your Trip",style: TextStyle(fontSize: 23),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.train,color: Colors.black,size: 30,),
                  Text("Trains",style: TextStyle(fontSize: 19,color: Colors.black),),
                ],
              ),
              TextFormField(decoration: const InputDecoration(hintText: "Date"),),
              TextFormField(decoration: const InputDecoration(hintText: "Leaving from"),),
              TextFormField(decoration: const InputDecoration(hintText: "Going to"),),
              ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const TrainBooking()),
              );}, child: const Text("Search"),),
      
              const Row(
                children: [
                  Icon(Icons.hotel,color: Colors.black,size: 30,),
                  Text("Hotels",style: TextStyle(fontSize: 19,color: Colors.black),),
                ],
              ),
              TextFormField(decoration: const InputDecoration(hintText: "Date"),),
              TextFormField(decoration: const InputDecoration(hintText: "Place"),),
              TextFormField(decoration: const InputDecoration(hintText: "Check-in"),),
              TextFormField(decoration: const InputDecoration(hintText: "Check-out"),),
              const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Select",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  "Adults:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                // DropDownButton(),
                Text(
                  "Children:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                //  SizedBox(width: 5,),
                // DropDownButton(),
              ],
            ),
              ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const HotelBooking()),
              );}, child: const Text("Search"),),
            ],
          ),
        ),
      ),
    );
  }
}