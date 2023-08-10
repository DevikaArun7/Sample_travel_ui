
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';

import '../widgets/custom_button.dart';

class JaisalmarPage extends StatefulWidget {
  const JaisalmarPage({super.key});

  @override
  State<JaisalmarPage> createState() => _JaisalmarPageState();
}

class _JaisalmarPageState extends State<JaisalmarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.purple,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Jaisalmar.jpeg"))
             ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Jaisalmar",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Jaisalmer, located in the desert state of Rajasthan, India, is a captivating city renowned for its golden sandstone architecture and desert landscapes. The Jaisalmer Fort, also known as the Golden Fort, is a UNESCO World Heritage Site and a prominent attraction. The city's intricate havelis (mansions), such as Patwon Ki Haveli and Salim Singh Ki Haveli, showcase exquisite craftsmanship. Jaisalmer is the gateway to the Thar Desert, offering opportunities for camel safaris, desert camping, and witnessing stunning sunsets over the sand dunes. The city's vibrant culture, folk music and dance, and colorful markets make it a must-visit destination for experiencing the charm of Rajasthan.",style: TextStyle(fontSize: 17),),
             ),
             CustomButton(text: "Book This Trip", onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const BothBooking()),
              );})
           ],
         ),
       )
    );
  }
}