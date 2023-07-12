
import 'package:flutter/material.dart';

import '../1_planyourtrip.dart';

class MysorePage extends StatefulWidget {
  const MysorePage({super.key});

  @override
  State<MysorePage> createState() => _MysorePageState();
}

class _MysorePageState extends State<MysorePage> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mysore.jpeg"))
             ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Mysore",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Mysore, located in the southern state of Karnataka, India, is a city steeped in rich history and cultural heritage. It is renowned for its magnificent Mysore Palace, a grand royal residence adorned with intricate architecture and vibrant colors. The city's famous Dasara festival showcases a grand procession and cultural performances. Mysore is also known for its well-preserved colonial architecture, bustling markets, and traditional silk weaving industry. The Chamundi Hills, with the Chamundeshwari Temple atop, offer panoramic views of the city. Mysore's regal charm, cultural festivities, and architectural splendor make it a captivating destination for travelers.",style: TextStyle(fontSize: 17),),
             ),
             ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => PlanYorTrip1()),
              );}, child: Text("Book This Tour"))
           ],
         ),
       )
    );
  }
}