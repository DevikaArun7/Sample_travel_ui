
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/2_planyourtrip.dart';

import 'dropdownbutton.dart';

class PlanYorTrip1 extends StatefulWidget {
  const PlanYorTrip1({super.key});

  @override
  State<PlanYorTrip1> createState() => _PlanYorTrip1State();
}

class _PlanYorTrip1State extends State<PlanYorTrip1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Let's Plan Your Trip"),
      ),
      body: Column(
        children: [
          TextFormFor(hintText: "Type your name"),
          SizedBox(
            height: 10,
          ),
          TextFormFor(hintText: "Type your email address"),
          SizedBox(
            height: 10,
          ),
          TextFormFor(hintText: "Where to go?"),
          SizedBox(
            height: 10,
          ),
          TextFormFor(hintText: "Type your name"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Select",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Adults:",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              DropDownButton(),
              Text(
                "Children:",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              //  SizedBox(width: 5,),
              DropDownButton(),
            ],
          ),
          TextButton(
            
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now());
                    
              },

              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('When do you want to go?',style: TextStyle(fontSize: 20),),
              ),
              ),
              ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => PlanYourTrip2()),
              );}, child: Text("Next"),),
        ],
      ),
    );
  }
}

class TextFormFor extends StatelessWidget {
  const TextFormFor({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(13.0),
      child: TextField(
        decoration: InputDecoration(hintText: " "),
      ),
    );
  }
}
