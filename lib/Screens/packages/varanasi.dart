import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Varanasi extends StatefulWidget {
  const Varanasi({super.key});

  @override
  State<Varanasi> createState() => _VaranasiState();
}

class _VaranasiState extends State<Varanasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
    );
  }
}