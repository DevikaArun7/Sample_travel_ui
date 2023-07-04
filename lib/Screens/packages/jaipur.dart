import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Jaipur extends StatefulWidget {
  const Jaipur({super.key});

  @override
  State<Jaipur> createState() => _JaipurState();
}

class _JaipurState extends State<Jaipur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
    );
}
}