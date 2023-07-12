import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/packages/agra.dart';
import 'package:sample_ui/Screens/packages/amrithsar.dart';
import 'package:sample_ui/Screens/packages/delhi.dart';
import 'package:sample_ui/Screens/packages/goa.dart';
import 'package:sample_ui/Screens/packages/hampi.dart';
import 'package:sample_ui/Screens/packages/jaipur.dart';
import 'package:sample_ui/Screens/packages/jaisalmar.dart';
import 'package:sample_ui/Screens/packages/kerala.dart';
import 'package:sample_ui/Screens/packages/mumbai.dart';
import 'package:sample_ui/Screens/packages/mysore.dart';
import 'package:sample_ui/Screens/packages/shimla.dart';
import 'package:sample_ui/Screens/packages/taj_mahal.dart';
import 'package:sample_ui/Screens/packages/udaipur.dart';
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
      MaterialPageRoute(builder: (context) => JaipurPage()),
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
      MaterialPageRoute(builder: (context) => VaranasiPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Kerala.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Kerala",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => KeralaP(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Goa.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Goa",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GoaPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Delhi.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Delhi",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DelhiPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mumbai.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Mumbai",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MumbaiPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Udaipur.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Udaipur",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UdaipurPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Amithsar.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Amrithsar",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AmrithsarPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Hampi.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Hampi",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HampiPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Jaisalmar.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Jaisalmar",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JaisalmarPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Agra.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Agra",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AgraPage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Mysore.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Mysore",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MysorePage(),),
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
                      backgroundImage: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Shimla.jpeg"),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text("Shimla",style: TextStyle(fontSize: 23),),
                  SizedBox(width: 10,),
                     InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShimlaPage(),),
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