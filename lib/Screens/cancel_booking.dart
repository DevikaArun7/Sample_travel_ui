import 'package:flutter/material.dart';
class CancelBookingPage extends StatefulWidget {
  const CancelBookingPage({super.key});

  @override
  State<CancelBookingPage> createState() => _CancelBookingPageState();
}

class _CancelBookingPageState extends State<CancelBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        title: Text("Cancel Booking"),
       ),
    );
  }
}