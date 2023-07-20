// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:sample_ui/Screens/1_planyourtrip.dart';
// import 'package:sample_ui/Screens/hotelbooking.dart';
// import 'package:sample_ui/Screens/trainbooking.dart';

// import 'dropdownbutton.dart';

// class PlanYourTrip2 extends StatefulWidget {
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
//         title: Text("Let's Plan Your Trip",style: TextStyle(fontSize: 23),),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               Row(
//                 children: const [
//                   Icon(Icons.train,color: Colors.black,size: 30,),
//                   Text("Trains",style: TextStyle(fontSize: 19,color: Colors.black),),
//                 ],
//               ),
//               TextFormField(decoration: InputDecoration(hintText: "Date"),),
//               TextFormField(decoration: InputDecoration(hintText: "Leaving from"),),
//               TextFormField(decoration: InputDecoration(hintText: "Going to"),),
//               ElevatedButton(onPressed: (){Navigator.push(
//                 context,
//                 MaterialPageRoute(builder:(context) => TrainBooking()),
//               );}, child: Text("Search"),),
      
//               Row(
//                 children: const [
//                   Icon(Icons.hotel,color: Colors.black,size: 30,),
//                   Text("Hotels",style: TextStyle(fontSize: 19,color: Colors.black),),
//                 ],
//               ),
//               TextFormField(decoration: InputDecoration(hintText: "Date"),),
//               TextFormField(decoration: InputDecoration(hintText: "Place"),),
//               TextFormField(decoration: InputDecoration(hintText: "Check-in"),),
//               TextFormField(decoration: InputDecoration(hintText: "Check-out"),),
//               Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
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
//                 DropDownButton(),
//                 Text(
//                   "Children:",
//                   style: TextStyle(
//                     fontSize: 18,
//                   ),
//                 ),
//                 //  SizedBox(width: 5,),
//                 DropDownButton(),
//               ],
//             ),
//               ElevatedButton(onPressed: (){Navigator.push(
//                 context,
//                 MaterialPageRoute(builder:(context) => HotelBooking()),
//               );}, child: Text("Search"),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }