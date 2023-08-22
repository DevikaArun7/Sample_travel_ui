// import 'package:flutter/material.dart';

// import '2_TrainDetails.dart';
// class PlanYorTrip1 extends StatefulWidget {
//   const PlanYorTrip1({super.key});

//   @override
//   State<PlanYorTrip1> createState() => _PlanYorTrip1State();
// }

// class _PlanYorTrip1State extends State<PlanYorTrip1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFC0CECE),
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("Let's Plan Your Trip"),
//       ),
//       body: ListView(
//         children: [
//           const TextFormFor(hintText: "Type your name"),
//           const SizedBox(
//             height: 10,
//           ),
//           const TextFormFor(hintText: "Type your email address"),
//           const SizedBox(
//             height: 10,
//           ),
//           const TextFormFor(hintText: "Where to go?"),
//           const SizedBox(
//             height: 10,
//           ),
//           // TextFormFor(hintText: "Type your name"),
//           // SizedBox(
//           //   height: 10,
//           // ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   "Select",
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//               Text(
//                 "Adults:",
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               // DropDownButton(),
//               Text(
//                 "Children:",
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               //  SizedBox(width: 5,),
//               // DropDownButton(),
//             ],
//           ),
//           TextButton(
//             onPressed: () {
//               showDatePicker(
//                   context: context,
//                   initialDate: DateTime.now(),
//                   firstDate: DateTime.now(),
//                   lastDate: DateTime.now().add(const Duration(days: 60)));
//             },
//             child: const Padding(
//               padding: EdgeInsets.all(15.0),
//               child: Text(
//                 'When do you want to go?',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PlanYourTrip2()),
//               );
//             },
//             child: const Text("Next"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TextFormFor extends StatelessWidget {
//   const TextFormFor({
//     super.key,
//     required this.hintText,
//   });
//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(13.0),
//       child: TextField(
//         decoration: InputDecoration(hintText: hintText),
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TrainBookingDetails extends StatefulWidget {
  const TrainBookingDetails({super.key});

  @override
  State<TrainBookingDetails> createState() => _TrainBookingDetailsState();
}

class _TrainBookingDetailsState extends State<TrainBookingDetails> {

  final CollectionReference train =
   FirebaseFirestore.instance.collection('train');

  void deleteFlight(docId){
    train.doc(docId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Train Booking Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
          stream: train.snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemCount:snapshot.data!.docs.length ,
                itemBuilder:(context, index) {
                  final DocumentSnapshot trainSnap = snapshot.data.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 240, 236, 236),
                            blurRadius: 10,
                            spreadRadius: 15
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(trainSnap['name'],style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Text(trainSnap['from'],style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Text(trainSnap['to'],style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Text(trainSnap['phone'].toString(),style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Text(trainSnap['train'],style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                            ],
                           ),
                           TextButton(onPressed: (){
                            deleteFlight(trainSnap.id);
                           }, child: Text("Cancel Trip")),
                          
                        ],
                      ),
                    ),
                  );
                }, );
            }
            return Container();
          },),
      ),
    );
  }
}
