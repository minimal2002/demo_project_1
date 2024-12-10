import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homeowner extends StatefulWidget {
  const Homeowner({super.key});

  @override
  State<Homeowner> createState() => _HomeownerState();
}

class _HomeownerState extends State<Homeowner> {
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
        backgroundColor: const Color(0xff96B1E1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
      ),
      body: Container(),
    );
  }
}