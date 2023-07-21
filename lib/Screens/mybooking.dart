import 'package:flutter/material.dart';

class MyBookingPage extends StatefulWidget {
  const MyBookingPage({super.key});

  @override
  State<MyBookingPage> createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
       
        appBar: AppBar(
          title: const Text("My Booking"),
          bottom: const TabBar(tabs: [
            Tab(text: 'Past'),
            Tab(text: 'Upcoming'),
            Tab(text: 'Cancel'),
           ]),
        ),
        body: TabBarView(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                color: Colors.amber,
                height: 90,
                width: 160,
                child: Center(child: Text("Past Page",style: TextStyle(fontSize: 30),))),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                color: Colors.amber,
                height: 90,
                width: 180,
                child: Center(child: Text("Upcoming Page",style: TextStyle(fontSize: 30),))),
            
            ),
          
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                color: Colors.amber,
                height: 90,
                width: 160,
                child: Center(child: Text("Cancel Page",style: TextStyle(fontSize: 30),))),
            ),
          ),
        ],
        ),
        ),
    );
    
  
  }
}