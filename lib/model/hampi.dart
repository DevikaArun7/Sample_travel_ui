
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';

import '../widgets/custom_button.dart';

class HampiPage extends StatefulWidget {
  const HampiPage({super.key});

  @override
  State<HampiPage> createState() => _HampiPageState();
}

class _HampiPageState extends State<HampiPage> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Hampi.jpeg"))
             ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Hampi",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Hampi, located in the southern state of Karnataka, India, is a UNESCO World Heritage Site and an ancient archaeological marvel. It was once the capital of the Vijayanagara Empire and is known for its magnificent ruins and temples. The Virupaksha Temple, Vittala Temple, and Hampi Bazaar are among the prominent attractions. The ruins of Hampi showcase intricate stone carvings, grand architecture, and a unique blend of Hindu and Islamic influences. Hampi's surreal landscapes, including the Tungabhadra River and massive boulders, add to its charm, making it a haven for history enthusiasts and nature lovers alike.",style: TextStyle(fontSize: 17),),
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