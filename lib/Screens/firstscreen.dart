import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/signup.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
          width: double.infinity ,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/front img.jpg"),
            fit: BoxFit.fill
            ),
          ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("Explore the Beauty\n with us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  ),
                  ),
              ),
              const SizedBox(height: 30,),
               const Align(
                alignment: Alignment.bottomCenter,
                child: Text("If you like to travel,this is your place!\nHave you can travel without hassie\n and enjoy it",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
                  ),
              ),
              const SizedBox(height: 55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[  
                  IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen (),
                  ),
                  );
                  }, 
                  icon: const Icon(Icons.keyboard_arrow_right_rounded),
                  iconSize: 100,
                  color: const Color.fromARGB(255, 211, 197, 197),
                  ),
                ]
                  ),
                  
                ],
              ),
            
            
            ),);
  }
}

