import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FlightBookingDetails extends StatefulWidget {
  const FlightBookingDetails({super.key});

  @override
  State<FlightBookingDetails> createState() => _FlightBookingDetailsState();
}

class _FlightBookingDetailsState extends State<FlightBookingDetails> {

  final CollectionReference flight =
   FirebaseFirestore.instance.collection('flight');

  void deleteFlight(docId){
    flight.doc(docId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Flight Booking Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
          stream: flight.snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemCount:snapshot.data!.docs.length ,
                itemBuilder:(context, index) {
                  final DocumentSnapshot flightSnap = snapshot.data.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:170 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
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
                              Text(flightSnap['name'],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                               Text(flightSnap['from'],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                                Text(flightSnap['to'],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Text(flightSnap['phone'].toString(),style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(flightSnap['flight'],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              ),
                            ],
                           ),
                           TextButton(onPressed: (){
                            deleteFlight(flightSnap.id);
                           }, child: const Text("Cancel Trip")),
                          //  IconButton(onPressed: (){}, icon: Icon(Icons.delete))
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
