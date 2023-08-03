import 'package:flutter/material.dart';

import '2_planyourtrip.dart';
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
        title: const Text("Let's Plan Your Trip"),
      ),
      body: ListView(
        children: [
          const TextFormFor(hintText: "Type your name"),
          const SizedBox(
            height: 10,
          ),
          const TextFormFor(hintText: "Type your email address"),
          const SizedBox(
            height: 10,
          ),
          const TextFormFor(hintText: "Where to go?"),
          const SizedBox(
            height: 10,
          ),
          // TextFormFor(hintText: "Type your name"),
          // SizedBox(
          //   height: 10,
          // ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
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
              // DropDownButton(),
              Text(
                "Children:",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              //  SizedBox(width: 5,),
              // DropDownButton(),
            ],
          ),
          TextButton(
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 60)));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'When do you want to go?',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlanYourTrip2()),
              );
            },
            child: const Text("Next"),
          ),
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
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: TextField(
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
