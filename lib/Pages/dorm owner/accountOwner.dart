import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accountowner extends StatefulWidget {
  const Accountowner({super.key});

  @override
  State<Accountowner> createState() => _AccountownerState();
}

class _AccountownerState extends State<Accountowner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'RoomMatch',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
        backgroundColor: const Color(0xff515389),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
      ),
      body: Container(
        
      ),
    );
  }
}