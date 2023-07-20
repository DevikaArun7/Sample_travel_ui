import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/planourtrip.dart';

import '../1_planyourtrip.dart';

class TajMahal extends StatefulWidget {
  const TajMahal({super.key});

  @override
  State<TajMahal> createState() => _TajMahalState();
}

class _TajMahalState extends State<TajMahal> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/slid img2.jpeg"))
             ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Taj Mahal",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("The Taj Mahal is an iconic monument in Agra, India. Built by Emperor Shah Jahan in memory of his wife, it is a UNESCO World Heritage Site. Made of white marble, it showcases exquisite Mughal architecture. With its symmetrical design, domed mausoleum, and surrounding gardens, it is a stunning sight. Visitors can explore the intricate interior chambers adorned with marble inlays and calligraphy. Sunrise and sunset offer breathtaking views as the marble reflects different hues. The Taj Mahal is a symbol of eternal love and a must-visit destination for travelers.",style: TextStyle(fontSize: 17),),
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