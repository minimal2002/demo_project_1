import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDorm extends StatefulWidget {
  const AddDorm({super.key});

  @override
  State<AddDorm> createState() => _AddDormState();
}

class _AddDormState extends State<AddDorm> {
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