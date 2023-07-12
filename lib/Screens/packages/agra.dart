
import 'package:flutter/material.dart';

import '../1_planyourtrip.dart';

class AgraPage extends StatefulWidget {
  const AgraPage({super.key});

  @override
  State<AgraPage> createState() => _AgraPageState();
}

class _AgraPageState extends State<AgraPage> {
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
               image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Agra.jpeg"))
             ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Agra",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("Agra, located in the state of Uttar Pradesh, India, is a city of immense historical significance, best known for the iconic Taj Mahal. The Taj Mahal, a UNESCO World Heritage Site, is a majestic marble mausoleum built by Emperor Shah Jahan in memory of his beloved wife. Agra Fort, another UNESCO World Heritage Site, is a massive red sandstone fortress that offers breathtaking views of the Taj Mahal. The city is also home to other architectural wonders like the Itmad-ud-Daulah's Tomb and Fatehpur Sikri, showcasing Mughal grandeur. Agra's rich history, splendid architecture, and the ethereal beauty of the Taj Mahal make it a must-visit destination for travelers.",style: TextStyle(fontSize: 17),),
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