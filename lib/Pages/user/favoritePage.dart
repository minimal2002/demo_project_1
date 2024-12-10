import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dorms = [
      {
        'image': 'assets/images/bb.jpg',
        'name': 'บุญญาดาเพลส',
      },
      {
        'image': 'assets/images/Boss Place.jpg',
        'name': 'หอพักหญิงบอสเพลส',
      },
      {
        'image': 'assets/images/Dragon Place.jpg',
        'name': 'ดราก้อนเพลส',
      },
      {
        'image': 'assets/images/1.png',
        'name': 'หอพักเพิ่มเติม',
      },
      {
        'image': 'assets/images/bb.jpg',
        'name': 'บุญญาดาเพลส',
      },
      {
        'image': 'assets/images/Dragon Place.jpg',
        'name': 'ดราก้อนเพลส',
      },
      {
        'image': 'assets/images/1.png',
        'name': 'หอพักเพิ่มเติม',
      },
    ];

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0xffFF1FCE),
                  size: 35,
                ),
                SizedBox(width: 8),
                Text(
                  'My Favorite',
                  style: TextStyle(
                      color: Color(0xff489EE6),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // จำนวนคอลัมน์ในแต่ละแถว
                  crossAxisSpacing: 10, // ระยะห่างระหว่างคอลัมน์
                  mainAxisSpacing: 10, // ระยะห่างระหว่างแถว
                  childAspectRatio: 0.75, // อัตราส่วนความกว้างต่อความสูง
                ),
                itemCount: dorms.length,
                itemBuilder: (context, index) {
                  final dorm = dorms[index];
                  return Card(
                    color: Colors.grey[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          dorm['image'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 180,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dorm['name'],
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow
                                          .ellipsis, // ตัดข้อความด้วย "..." หากยาวเกิน
                                      maxLines: 2, // จำกัดไม่เกิน 2 บรรทัด
                                    ),
                                  ],
                                ),
                              ),
                              const Column(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Color(0xffFF1FCE),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
