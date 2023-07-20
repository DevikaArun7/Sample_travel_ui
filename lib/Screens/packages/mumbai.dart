
import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/planourtrip.dart';

import '../1_planyourtrip.dart';

class MumbaiPage extends StatefulWidget {
  const MumbaiPage({super.key});

  @override
  State<MumbaiPage> createState() => _MumbaiPageState();
}

class _MumbaiPageState extends State<MumbaiPage> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mumbai.jpeg"))
             ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Mumbai",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Mumbai, the financial capital of India, is a dynamic and cosmopolitan city on the western coast. It is known for its bustling energy, iconic landmarks, and Bollywood film industry. The Gateway of India, Marine Drive, and Juhu Beach are popular attractions offering stunning views of the Arabian Sea. The city's vibrant street markets, such as Colaba Causeway and Crawford Market, are a shopaholic's delight. Mumbai's diverse culinary scene offers a wide range of street food, regional delicacies, and international cuisine. With its fast-paced lifestyle and a blend of cultures, Mumbai is a city that never sleeps and leaves visitors enthralled.",style: TextStyle(fontSize: 17),),
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