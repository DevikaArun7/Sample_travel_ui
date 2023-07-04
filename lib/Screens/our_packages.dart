import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/packages/jaipur.dart';
import 'package:sample_ui/Screens/packages/taj_mahal.dart';
import 'package:sample_ui/Screens/packages/varanasi.dart';
import 'package:sample_ui/Screens/signin.dart';

class OurPackages extends StatefulWidget {
  const OurPackages({super.key});

  @override
  State<OurPackages> createState() => _OurPackagesState();
}

class _OurPackagesState extends State<OurPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(title: const Text("Our Packages"),),
      body: ListView(
      children: [
       Row(
         children: [
           Padding(
             padding:  const EdgeInsets.all(8.0),
             child: Container(
              width: 375,
              height: 85,
              color: Color.fromARGB(255, 186, 178, 178),
              child: Row(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('C:/Users/HP/Desktop/Sample ui making/sample_ui/images/slid img2.jpeg'),
                      ),
                  ),
                  const SizedBox(width: 50,),
                  const Text("Taj Mahal",style: TextStyle(fontSize: 23),),
                  const SizedBox(width: 10,),
                  InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TajMahal(),),
    );
  },
  child: Icon(Icons.arrow_forward_ios_outlined),
),
                ],
              ),
              
                 ),
           ),
           
         ],
       ),
       Row(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              width: 375,
              height: 85,
              color: Color.fromARGB(255, 186, 178, 178),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Jaipur.jpeg"),
                      ),
                  ),
                  SizedBox(width: 50,),
                  Text("Jaipur",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 15,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Jaipur()),
    );
  },
  child: Icon(Icons.arrow_forward_ios_outlined),
),
                ],
              ),
              
                 ),
           ),
           
         ],
       ),
       Row(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              width: 375,
              height: 85,
              color: Color.fromARGB(255, 186, 178, 178),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Varanasi.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Varansi",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Varanasi()),
    );
  },
  child: Icon(Icons.arrow_forward_ios_outlined),
),
                ],
              ),
              
                 ),
           ),
           
         ],
       ),
       
      ],
        
      )
    );
  }
}