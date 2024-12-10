import 'dart:developer';

import 'package:demo_project_1/Pages/dorm%20owner/accountOwner.dart';
import 'package:demo_project_1/Pages/dorm%20owner/add_dorm.dart';
import 'package:demo_project_1/Pages/dorm%20owner/homeOwner.dart';
import 'package:demo_project_1/widgets/drawer_owner.dart';
import 'package:flutter/material.dart';

class MainDrawerOwner extends StatefulWidget {
  const MainDrawerOwner({super.key});

  @override
  State<MainDrawerOwner> createState() => _MainDrawerOwnerState();
}

class _MainDrawerOwnerState extends State<MainDrawerOwner> {
  Widget currentPage = const Homeowner();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: false,
      child: Scaffold(
        // ** Body ของหน้า **
        body: Stack(
          children: [
            currentPage, // หน้าเนื้อหาที่จะแสดง
            Positioned(
              top: screenHeight * 0.04,
              right: screenWidth * 0.01,
              child: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: screenSize.width * 0.08,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                },
              ),
            ),
          ],
        ),

        // ** BottomNavigationBar พร้อมปุ่มตรงกลาง **
        endDrawer: const MyDrawerOwner(),
        bottomNavigationBar: Stack(
          clipBehavior: Clip.none, // อนุญาตให้ปุ่มยื่นออกมา
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
               
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(), // ช่องว่างสำหรับปุ่มตรงกลาง
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: '',
                ),
                
              ],
              backgroundColor: const Color(0xff515389),
              iconSize: screenWidth * 0.08,
              selectedItemColor: Colors.white,
              unselectedItemColor: Color.fromARGB(255, 124, 124, 124),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: selectedIndex,
              onTap: (value) {
                log(value.toString());
                setState(() {
                  selectedIndex = value;
                  switch (selectedIndex) {
                    case 0:
                      currentPage = const Homeowner();
                      break;
                    case 1:
                      currentPage = const AddDorm();
                      break;
                    case 2:
                      currentPage = const Accountowner();
                      break;
                  }
                });
              },
            ),

            // ปุ่มวงกลมตรงกลาง
            Positioned(
              top: -30,
              left: screenWidth / 2 - 50, // จัดให้อยู่ตรงกลางในแนวนอน
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                    currentPage = const AddDorm();
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff515389),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: screenHeight * 0.01),
                      Icon(
                        Icons.add_business,
                        color: selectedIndex == 1
                            ? Colors.white
                            : const Color.fromARGB(255, 124, 124, 124),
                        size: 60,
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Text(
                        'ADD',
                        style: TextStyle(
                            color: selectedIndex == 1
                                ? Colors.white
                                : const Color.fromARGB(255, 124, 124, 124),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
