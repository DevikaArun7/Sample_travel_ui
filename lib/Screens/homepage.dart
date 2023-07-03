import 'package:flutter/material.dart';
import 'package:sample_ui/Screens/drawer.dart';

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
    );
  }
}