import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return const Scaffold(
      // appBar: AppBar(
      // ),
      backgroundColor: Color(0xffD0E4FF),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('RoomMatch')
              ],
            )
          ],
        ),
      ),
    );
  }
}