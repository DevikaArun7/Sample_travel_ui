
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';

import '../widgets/custom_button.dart';

class ShimlaPage extends StatefulWidget {
  const ShimlaPage({super.key});

  @override
  State<ShimlaPage> createState() => _ShimlaPageState();
}

class _ShimlaPageState extends State<ShimlaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.purple
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Shimla.jpeg"))
             ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Shimla",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Shimla, the capital city of Himachal Pradesh in India, is a picturesque hill station nestled in the Himalayas. Known for its colonial architecture, it served as the summer capital during the British Raj. The Mall Road, a vibrant shopping street, offers stunning views of the surrounding mountains. The Shimla Ridge, with its beautiful open spaces and Christ Church, is a popular attraction. Visitors can also explore the historic Viceregal Lodge and take a toy train ride on the Shimla-Kalka Railway, a UNESCO World Heritage Site. Shimla's pleasant climate, scenic beauty, and colonial charm make it a beloved destination for nature lovers and adventure enthusiasts.",style: TextStyle(fontSize: 17),),
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