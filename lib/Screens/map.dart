import 'package:flutter/material.dart';
class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFC0CECE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Container(
          width: double.infinity,
          height:double.infinity,
          child: Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Map.png",fit:BoxFit.cover,),
        ),
      )
    );
  }
}