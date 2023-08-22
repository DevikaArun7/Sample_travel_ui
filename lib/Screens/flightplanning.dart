// import 'package:flutter/material.dart';
// import 'package:phoneauth_firebase/Screens/flightdetails.dart';
// class FlightPlanning extends StatefulWidget {
//   const FlightPlanning({super.key});

//   @override
//   State<FlightPlanning> createState() => _FlightPlanningState();
// }

// class _FlightPlanningState extends State<FlightPlanning> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFC0CECE),
//       appBar: AppBar(
//         title: const Text("flights"),
//       ),
//       body: Column(
//         children: [
//           const Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: Text(
//                   "16347 Mangalore Exp",
//                   style: TextStyle(fontSize: 19, color: Colors.black),
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Text(
//                 "1.20 - 8.33",
//                 style: TextStyle(fontSize: 19, color: Colors.black),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const FlightBookingDetails()),
//                       );
//                     },
//                     child: Container(
//                       width: 110,
//                       height: 95,
//                       color: const Color.fromARGB(255, 159, 181, 192),
//                       child: const Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text("3A"),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(Icons.monetization_on_outlined),
//                                 Text("575")
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "AVL 0019",
//                             style: TextStyle(color: Colors.black),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const FlightBookingDetails()),
//                       );
//                     },
//                     child: Container(
//                       width: 110,
//                       height: 95,
//                       color: const Color.fromARGB(255, 159, 181, 192),
//                       child: const Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text("3A"),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(Icons.monetization_on_outlined),
//                                 Text("575")
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "AVL 0019",
//                             style: TextStyle(color: Colors.black),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//              SizedBox(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const FlightBookingDetails()),
//                       );
//                     },
//                     child: Container(
//                       width: 110,
//                       height: 95,
//                       color: const Color.fromARGB(255, 159, 181, 192),
//                       child: const Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text("3A"),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(Icons.monetization_on_outlined),
//                                 Text("575")
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "AVL 0019",
//                             style: TextStyle(color: Colors.black),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:phoneauth_firebase/screens/trainbooking.dart';

// import 'hotelbooking.dart';

// class FlightPlanning extends StatefulWidget {
//   const PlanYourTrip2({super.key});

//   @override
//   State<PlanYourTrip2> createState() => _PlanYourTrip2State();
// }

// class _PlanYourTrip2State extends State<PlanYourTrip2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFC0CECE),
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("Let's Plan Your Trip",style: TextStyle(fontSize: 23),),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               const Row(
//                 children: [
//                   Icon(Icons.train,color: Colors.black,size: 30,),
//                   Text("Trains",style: TextStyle(fontSize: 19,color: Colors.black),),
//                 ],
//               ),
//               TextFormField(decoration: const InputDecoration(hintText: "Date"),),
//               TextFormField(decoration: const InputDecoration(hintText: "Leaving from"),),
//               TextFormField(decoration: const InputDecoration(hintText: "Going to"),),
//               ElevatedButton(onPressed: (){Navigator.push(
//                 context,
//                 MaterialPageRoute(builder:(context) => const TrainBooking()),
//               );}, child: const Text("Search"),),
      
//               const Row(
//                 children: [
//                   Icon(Icons.hotel,color: Colors.black,size: 30,),
//                   Text("Hotels",style: TextStyle(fontSize: 19,color: Colors.black),),
//                 ],
//               ),
//               TextFormField(decoration: const InputDecoration(hintText: "Date"),),
//               TextFormField(decoration: const InputDecoration(hintText: "Place"),),
//               TextFormField(decoration: const InputDecoration(hintText: "Check-in"),),
//               TextFormField(decoration: const InputDecoration(hintText: "Check-out"),),
//               const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "Select",
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Adults:",
//                   style: TextStyle(
//                     fontSize: 18,
//                   ),
//                 ),
//                 // DropDownButton(),
//                 Text(
//                   "Children:",
//                   style: TextStyle(
//                     fontSize: 18,
//                   ),
//                 ),
//                 //  SizedBox(width: 5,),
//                 // DropDownButton(),
//               ],
//             ),
//               ElevatedButton(onPressed: (){Navigator.push(
//                 context,
//                 MaterialPageRoute(builder:(context) => const HotelBooking()),
//               );}, child: const Text("Search"),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/Screens/flightdetails.dart';
import 'package:phoneauth_firebase/widgets/custom_button.dart';

class FlightPlanning extends StatefulWidget {
  const FlightPlanning({super.key});

  @override
  State<FlightPlanning> createState() => _FlightPlanningState();
}

class _FlightPlanningState extends State<FlightPlanning> {

  final  Fligts = ['INDIGO  9.00 - 11.07 ','INDIGO    6.30 - 8.37','INDIGO    8.30 - 10.37'];
  String ? selectedGroup;
   final CollectionReference flight =
   FirebaseFirestore.instance.collection('flight');

  TextEditingController flightName = TextEditingController();
  TextEditingController flightPhone = TextEditingController();
  TextEditingController flightfrom = TextEditingController();
  TextEditingController flightto = TextEditingController();


  void addflight(){
    final data = {
      'name': flightName.text,
      'phone': flightPhone.text,
      'from':flightfrom.text,
      'to':flightto.text,
      'flight': selectedGroup
      };
    flight.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Let's Plan Your Trip"),
        backgroundColor: Colors.purple,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:flightName ,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Name")
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:flightfrom ,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("From")
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:flightto ,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("To")
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: flightPhone,
              keyboardType:TextInputType.number ,
              maxLength: 10,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Phone Number")
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                label: Text("Select Flight")
              ),
              items: Fligts.
              map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
                ))
              .toList(), 
              onChanged: (val){
                selectedGroup = val as String;
              }),
          ),
          CustomButton(
            text: "Sumbit", onPressed: (){
              addflight();
               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlightBookingDetails(),
                      ),
                    );
            })
            
        ],
        ),
      ),
    );
  }
}