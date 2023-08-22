
// import 'package:flutter/material.dart';
// import 'package:phoneauth_firebase/screens/trainbooking.dart';

// import 'hotelbooking.dart';

// class TrainPlanning extends StatefulWidget {
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
import 'package:phoneauth_firebase/Screens/traindetails.dart';
import 'package:phoneauth_firebase/widgets/custom_button.dart';

class TrainPlanning extends StatefulWidget {
  const TrainPlanning({super.key});

  @override
  State<TrainPlanning> createState() => _TrainPlanningState();
}

class _TrainPlanningState extends State<TrainPlanning> {

  final  bloodGroups = ['Eranad  9.00 - 11.07 ','Parasuram Exp   6.30 - 8.37','Trivandrum Exp   8.30 - 10.37'];
  String ? selectedGroup;
   final CollectionReference train =
   FirebaseFirestore.instance.collection('train');

  TextEditingController trainName = TextEditingController();
  TextEditingController trainPhone = TextEditingController();
  TextEditingController trainFrom = TextEditingController();
  TextEditingController trainTo = TextEditingController();


  void addTrain(){
    final data = {
      'name': trainName.text,
      'phone': trainPhone.text,
      'from':trainFrom.text,
      'to':trainTo.text,
      'train': selectedGroup
      };
    train.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Let's Plan Your Trip"),
        backgroundColor: Colors.purple,
      ),
      body:  Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
        children: [
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller:trainName ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Name")
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: trainPhone,
              keyboardType:TextInputType.number ,
              maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Phone Number")
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller:trainFrom,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("From")
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller:trainTo ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("To")
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                label: Text("Select Train")
              ),
              items: bloodGroups.
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
              addTrain();
               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrainBookingDetails(),
                      ),
                    );
            })
            
        ],
        ),
      ),
    );
  }
}