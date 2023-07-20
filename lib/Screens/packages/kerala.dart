
import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/planourtrip.dart';

import '../1_planyourtrip.dart';

class KeralaP extends StatefulWidget {
  const KeralaP({super.key});

  @override
  State<KeralaP> createState() => _KeralaPState();
}

class _KeralaPState extends State<KeralaP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Kerala.jpeg"))
             ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Kerala",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Kerala, located on the southwestern coast of India, is a picturesque state known as Gods Own Country.It is renowned for its serene backwaters, palm-fringed beaches, and lush green landscapes. The tranquil backwaters of Alleppey and Kumarakom offer houseboat cruises, providing a unique and relaxing experience. Kerala's rich cultural heritage is evident in its classical dance forms like Kathakali and traditional martial art, Kalaripayattu. The state is also famous for its Ayurvedic wellness retreats, where visitors can rejuvenate their mind, body, and soul. Kerala is a tropical paradise that offers a blend of natural beauty, cultural experiences, and a warm and welcoming atmosphere.",style: TextStyle(fontSize: 17),),
             ),
             ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => PlanYourTrip()),
              );}, child: Text("Book This Tour"))
           ],
         ),
       )
    );
  }
}