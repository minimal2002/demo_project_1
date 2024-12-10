import 'package:demo_project_1/Pages/user/main_drawer.dart';
import 'package:demo_project_1/Pages/user/match/match1Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Matchpage extends StatefulWidget {
  const Matchpage({super.key});

  @override
  State<Matchpage> createState() => _MatchpageState();
}

class _MatchpageState extends State<Matchpage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'RoomMatch',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: const Color(0xff96B1E1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'คุณกำลังมองหา Roommate ที่เข้ากันได้ใช่ไหม ?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const MainDrawer());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD0E4FF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: const Text(
                      'ไม่',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555),
                      ),
                    ),
                  ),
                  // SizedBox(width: screenWidth * 0.2),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const Match1page());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD0E4FF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: const Text(
                      'ใช่',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
