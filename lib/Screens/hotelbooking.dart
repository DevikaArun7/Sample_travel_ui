// // import 'package:flutter/material.dart';

// // import 'hotelbookdetails.dart';
// // import 'map.dart';

// // class HotelBooking extends StatefulWidget {
// //   const HotelBooking({super.key});

// //   @override
// //   State<HotelBooking> createState() => _HotelBookingState();
// // }

// // class _HotelBookingState extends State<HotelBooking> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFC0CECE),
// //       appBar: AppBar(
// //         title: const Text("Hotels"),
// //       ),
// //       body:Column(
// //         children: [
// //           const Padding(
// //             padding: EdgeInsets.all(12.0),
// //             child: Center(child: Text("Mrs Li's Home",style: TextStyle(fontSize: 23),)),
// //           ),
// //           Row(
// //             children: [
// //               const SizedBox(width: 10,),
// //               SizedBox(
// //                 width: 120,
// //                 height: 100,
// //                 child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
// //               ),
// //               const SizedBox(width: 5,),
// //                 SizedBox(
// //                 width: 120,
// //                 height: 100,
// //                 child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img2.jpg"),
// //               ),
// //               const SizedBox(width: 5,),
// //                 SizedBox(
// //                 width: 120,
// //                 height: 100,
// //                 child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/hotel img1.jpg"),
// //               ),
// //               const SizedBox(width: 10,),
// //             ],
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(15.0),
// //             child: Container(
// //               color: const Color.fromARGB(255, 172, 202, 226),
// //               width: 300,
// //               height: 80,
// //               child: const Padding(
// //                 padding: EdgeInsets.all(8.0),
// //                 child: Text("Featuring city views, Mrs Lis Home has accommodation with a garden and a balcony,around 5.9 miles from Shanghai Train Station"),
// //               )),
// //           ),
// //           const Text("Price:For 2 Night -->1400"),
// //           ElevatedButton(onPressed: (){
// //       Navigator.of(context).pushReplacement(
// //         MaterialPageRoute(builder: (context) =>const HotelBookingDetails()),
// //       );
// //     }, child: const Text("Book Now",)),
// //           ElevatedButton(onPressed: (){
// //       Navigator.of(context).push(
// //         MaterialPageRoute(builder: (context) =>const MapPage()),
// //       );
// //     }, child: const Text("Show On Map"))
// //         ],
// //       ),
      
// //     );
// //   }
// // }  

// // import 'package:flutter/material.dart';
// // import 'package:phoneauth_firebase/Screens/flightdetails.dart';
// // class FlightPlanning extends StatefulWidget {
// //   const FlightPlanning({super.key});

// //   @override
// //   State<FlightPlanning> createState() => _FlightPlanningState();
// // }

// // class _FlightPlanningState extends State<FlightPlanning> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFC0CECE),
// //       appBar: AppBar(
// //         title: const Text("flights"),
// //       ),
// //       body: Column(
// //         children: [
// //           const Row(
// //             children: [
// //               Padding(
// //                 padding: EdgeInsets.all(20.0),
// //                 child: Text(
// //                   "16347 Mangalore Exp",
// //                   style: TextStyle(fontSize: 19, color: Colors.black),
// //                 ),
// //               ),
// //               SizedBox(
// //                 width: 15,
// //               ),
// //               Text(
// //                 "1.20 - 8.33",
// //                 style: TextStyle(fontSize: 19, color: Colors.black),
// //               ),
// //             ],
// //           ),
// //           Row(
// //             children: [
// //               SizedBox(
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: InkWell(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => const FlightBookingDetails()),
// //                       );
// //                     },
// //                     child: Container(
// //                       width: 110,
// //                       height: 95,
// //                       color: const Color.fromARGB(255, 159, 181, 192),
// //                       child: const Column(
// //                         children: [
// //                           Padding(
// //                             padding: EdgeInsets.all(8.0),
// //                             child: Row(
// //                               children: [
// //                                 Text("3A"),
// //                                 SizedBox(
// //                                   width: 10,
// //                                 ),
// //                                 Icon(Icons.monetization_on_outlined),
// //                                 Text("575")
// //                               ],
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             height: 10,
// //                           ),
// //                           Text(
// //                             "AVL 0019",
// //                             style: TextStyle(color: Colors.black),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: InkWell(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => const FlightBookingDetails()),
// //                       );
// //                     },
// //                     child: Container(
// //                       width: 110,
// //                       height: 95,
// //                       color: const Color.fromARGB(255, 159, 181, 192),
// //                       child: const Column(
// //                         children: [
// //                           Padding(
// //                             padding: EdgeInsets.all(8.0),
// //                             child: Row(
// //                               children: [
// //                                 Text("3A"),
// //                                 SizedBox(
// //                                   width: 10,
// //                                 ),
// //                                 Icon(Icons.monetization_on_outlined),
// //                                 Text("575")
// //                               ],
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             height: 10,
// //                           ),
// //                           Text(
// //                             "AVL 0019",
// //                             style: TextStyle(color: Colors.black),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //              SizedBox(
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: InkWell(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => const FlightBookingDetails()),
// //                       );
// //                     },
// //                     child: Container(
// //                       width: 110,
// //                       height: 95,
// //                       color: const Color.fromARGB(255, 159, 181, 192),
// //                       child: const Column(
// //                         children: [
// //                           Padding(
// //                             padding: EdgeInsets.all(8.0),
// //                             child: Row(
// //                               children: [
// //                                 Text("3A"),
// //                                 SizedBox(
// //                                   width: 10,
// //                                 ),
// //                                 Icon(Icons.monetization_on_outlined),
// //                                 Text("575")
// //                               ],
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             height: 10,
// //                           ),
// //                           Text(
// //                             "AVL 0019",
// //                             style: TextStyle(color: Colors.black),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }



// // import 'package:flutter/material.dart';
// // import 'package:phoneauth_firebase/screens/trainbooking.dart';

// // import 'hotelbooking.dart';

// // class FlightPlanning extends StatefulWidget {
// //   const PlanYourTrip2({super.key});

// //   @override
// //   State<PlanYourTrip2> createState() => _PlanYourTrip2State();
// // }

// // class _PlanYourTrip2State extends State<PlanYourTrip2> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFC0CECE),
// //       appBar: AppBar(
// //         backgroundColor: Colors.green,
// //         title: const Text("Let's Plan Your Trip",style: TextStyle(fontSize: 23),),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(15.0),
// //           child: Column(
// //             children: [
// //               const Row(
// //                 children: [
// //                   Icon(Icons.train,color: Colors.black,size: 30,),
// //                   Text("Trains",style: TextStyle(fontSize: 19,color: Colors.black),),
// //                 ],
// //               ),
// //               TextFormField(decoration: const InputDecoration(hintText: "Date"),),
// //               TextFormField(decoration: const InputDecoration(hintText: "Leaving from"),),
// //               TextFormField(decoration: const InputDecoration(hintText: "Going to"),),
// //               ElevatedButton(onPressed: (){Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder:(context) => const TrainBooking()),
// //               );}, child: const Text("Search"),),
      
// //               const Row(
// //                 children: [
// //                   Icon(Icons.hotel,color: Colors.black,size: 30,),
// //                   Text("Hotels",style: TextStyle(fontSize: 19,color: Colors.black),),
// //                 ],
// //               ),
// //               TextFormField(decoration: const InputDecoration(hintText: "Date"),),
// //               TextFormField(decoration: const InputDecoration(hintText: "Place"),),
// //               TextFormField(decoration: const InputDecoration(hintText: "Check-in"),),
// //               TextFormField(decoration: const InputDecoration(hintText: "Check-out"),),
// //               const Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceAround,
// //               children: [
// //                 Padding(
// //                   padding: EdgeInsets.all(8.0),
// //                   child: Text(
// //                     "Select",
// //                     style: TextStyle(
// //                       fontSize: 20,
// //                     ),
// //                   ),
// //                 ),
// //                 Text(
// //                   "Adults:",
// //                   style: TextStyle(
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //                 // DropDownButton(),
// //                 Text(
// //                   "Children:",
// //                   style: TextStyle(
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //                 //  SizedBox(width: 5,),
// //                 // DropDownButton(),
// //               ],
// //             ),
// //               ElevatedButton(onPressed: (){Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder:(context) => const HotelBooking()),
// //               );}, child: const Text("Search"),),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:phoneauth_firebase/Screens/flightdetails.dart';
// import 'package:phoneauth_firebase/widgets/custom_button.dart';

// class HotelBooking extends StatefulWidget {
//   const HotelBooking({super.key});

//   @override
//   State<HotelBooking> createState() => _HotelBookingState();
// }

// class _HotelBookingState extends State<HotelBooking> {

//   final  Hotels = ['Towerr','Lezzil ',' Terrece'];
//   String ? selectedGroup;
//    final CollectionReference hotels =
//    FirebaseFirestore.instance.collection('hotels');

//   TextEditingController hotelname = TextEditingController();
//   TextEditingController hotelcheckin = TextEditingController();
//   TextEditingController hotelcheckout = TextEditingController();
//   TextEditingController members = TextEditingController();
//   TextEditingController phone = TextEditingController();

//   void addflight(){
//     final data = {
//       'hotelname': hotelname.text,
//       'phone': phone.text,
//       'checkin':hotelcheckin.text,
//       'checkout':hotelcheckout.text,
//       'members': members,
//       };
//     hotels.add(data);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text("Let's Plan Your Trip"),
//         backgroundColor: Colors.purple,
//       ),
//       body:  Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: ListView(
//         children: [
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller:flightName ,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text("Enter Your Name")
//               ),
//             ),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller:flightfrom ,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text("From")
//               ),
//             ),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller:flightto ,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text("To")
//               ),
//             ),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: flightPhone,
//               keyboardType:TextInputType.number ,
//               maxLength: 10,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text("Phone Number")
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: DropdownButtonFormField(
//               decoration: const InputDecoration(
//                 label: Text("Select Hotel")
//               ),
//               items: hotels.
//               map((e) => DropdownMenuItem(
//                 child: Text(e),
//                 value: e,
//                 ))
//               .toList(), 
//               onChanged: (val){
//                 selectedGroup = val as String;
//               }),
//           ),
//           CustomButton(
//             text: "Sumbit", onPressed: (){
//               addflight();
//                Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const FlightBookingDetails(),
//                       ),
//                     );
//             })
            
//         ],
//         ),
//       ),
//     );
//   }
// }