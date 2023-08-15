import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/widgets/custom_button.dart';

import '../Screens/both_booking.dart';

class TajMahal extends StatefulWidget {
  const TajMahal(
      {super.key,
      required this.packageName,
      required this.packageDescription,
      required this.images});
  final List<dynamic> images;
  final String packageName;
  final String packageDescription;

  @override
  State<TajMahal> createState() => _TajMahalState();
}

class _TajMahalState extends State<TajMahal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 200,
                //   decoration: const BoxDecoration(
                //    image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/slid img2.jpeg")),

                //  ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Image.network(widget.images[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemCount: widget.images.length,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  widget.packageName,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  widget.packageDescription,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              //  ElevatedButton(onPressed: (){
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder:(context) => const BothBooking()),
              //   );
              //   }, child: const Text("Book This Tour")),
              CustomButton(
                  text: "Book This Trip",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BothBooking()),
                    );
                  })
            ],
          ),
        ));
  }
}
