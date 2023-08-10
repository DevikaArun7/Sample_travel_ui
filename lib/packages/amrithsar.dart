
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';

import '../widgets/custom_button.dart';

class AmrithsarPage extends StatefulWidget {
  const AmrithsarPage({super.key});

  @override
  State<AmrithsarPage> createState() => _AmrithsarPageState();
}

class _AmrithsarPageState extends State<AmrithsarPage> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Amithsar.jpeg"))
             ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Amrithsar",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Amritsar, located in the northwestern state of Punjab, India, is a city of rich cultural and historical significance. It is most famous for the Golden Temple, also known as Harmandir Sahib, the holiest shrine in Sikhism. The temple's stunning golden architecture and its serene surroundings attract millions of visitors each year. Amritsar is also known for the Jallianwala Bagh, a memorial garden that commemorates the tragic massacre of 1919. The city is a culinary delight, offering mouthwatering Punjabi cuisine, including the famous Amritsari kulcha and lassi. Amritsar's vibrant markets, bustling streets, and warm Punjabi hospitality make it a must-visit destination for experiencing Sikh culture and history.",style: TextStyle(fontSize: 17),),
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