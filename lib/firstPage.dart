import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("First Page"),
      // ),
      backgroundColor: const Color(0xffD0E4FF),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // โลโก้
            Image.asset(
              'assets/images/Roommatch2.gif'
, // เปลี่ยนเส้นทางตามตำแหน่งไฟล์โลโก้ของคุณ
              width: double.infinity, // กำหนดขนาดของโลโก้
              // height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
