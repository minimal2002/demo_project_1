import 'dart:developer';
import 'package:demo_project_1/Pages/user/accountPage.dart';
import 'package:demo_project_1/Pages/user/favoritePage.dart';
import 'package:demo_project_1/Pages/user/homePage.dart';
import 'package:demo_project_1/Pages/user/matchPage.dart';
import 'package:demo_project_1/Pages/user/searchPage.dart';
import 'package:demo_project_1/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget currentPage = const Homepage();
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
        endDrawer: const MyDrawer(),
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
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(), // ช่องว่างสำหรับปุ่มตรงกลาง
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: '',
                ),
              ],
              backgroundColor: const Color(0xff96B1E1),
              iconSize: screenWidth * 0.08,
              selectedItemColor: Colors.white,
              unselectedItemColor: const Color.fromARGB(255, 87, 87, 87),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: selectedIndex,
              onTap: (value) {
                log(value.toString());
                setState(() {
                  selectedIndex = value;
                  switch (selectedIndex) {
                    case 0:
                      currentPage = const Homepage();
                      break;
                    case 1:
                      currentPage = const Searchpage();
                      break;
                    case 2:
                      currentPage = const Matchpage();
                      break;
                    case 3:
                      currentPage = const Favoritepage();
                      break;
                    case 4:
                      currentPage = const Accountpage();
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
                    selectedIndex = 2;
                    currentPage = const Matchpage();
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff96B1E1),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                       SizedBox(height: screenHeight * 0.01),
                      Icon(
                        Icons.group,
                        color: selectedIndex == 2
                            ? Colors.white
                            : const Color.fromARGB(255, 87, 87, 87),
                        size: 60,
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Text(
                        'Match',
                        style: TextStyle(
                           color: selectedIndex == 2
                            ? Colors.white
                            : const Color.fromARGB(255, 87, 87, 87),
                          fontSize: 14, 
                          fontWeight: FontWeight.bold
                        ),
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
