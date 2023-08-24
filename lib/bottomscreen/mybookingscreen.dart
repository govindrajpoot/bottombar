import 'package:flutter/material.dart';

class mybooking extends StatefulWidget {
  const mybooking({super.key});

  @override
  State<mybooking> createState() => _mybookingState();
}

class _mybookingState extends State<mybooking> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(body: Column(children: [
        Text("My Booking screen"),
      ],),),
    );
  }
}
