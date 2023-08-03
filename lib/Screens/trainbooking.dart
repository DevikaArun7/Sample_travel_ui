import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/trainbookdetails.dart';
class TrainBooking extends StatefulWidget {
  const TrainBooking({super.key});

  @override
  State<TrainBooking> createState() => _TrainBookingState();
}

class _TrainBookingState extends State<TrainBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        title: const Text("Trains"),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "16347 Mangalore Exp",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "1.20 - 8.33",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainBookingDetails()),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 95,
                      color: const Color.fromARGB(255, 159, 181, 192),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("3A"),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.monetization_on_outlined),
                                Text("575")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AVL 0019",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainBookingDetails()),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 95,
                      color: const Color.fromARGB(255, 159, 181, 192),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("3A"),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.monetization_on_outlined),
                                Text("575")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AVL 0019",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainBookingDetails()),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 95,
                      color: const Color.fromARGB(255, 159, 181, 192),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("3A"),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.monetization_on_outlined),
                                Text("575")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AVL 0019",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
