import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/drawer.dart';
import 'package:sample_ui/Screens/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      drawer: const NavBar(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox(
              height: 197, // Adjust the height as needed
              child: SliderScreen(),
            ),
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Container(
                width: double.infinity,
                child: const Text("       We Fulfill \n               YourTravel \n                         Dreams",style: TextStyle(fontSize: 23,fontStyle: FontStyle.italic,shadows: [Shadow(color: Colors.blue,blurRadius: 2.0,offset: Offset(2.0, 2.0))]),)),
            ),
            const Align(alignment: AlignmentDirectional.center,
            child: Text("Popular Packages",style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            
            ),
            ),
           Column(
             children: [
               const SizedBox(
             height: 197, 
             // Adjust the height as needed
             child: SliderScreen(),
           ),
             ],
           ),
           Padding(
             padding: const EdgeInsets.all(13.0),
             child: ElevatedButton(onPressed: (){}, child: Text("Our Packages"),),
           ),
          ],
          
        ),
        
      ),
      
    );
  }
}

