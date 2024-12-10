import 'package:demo_project_1/Pages/user/DetailPage.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> dorms = [
      {
        'image': 'assets/images/bb.jpg',
        'name': 'บุญญาดาเพลส',
        'distance': '3 กม.',
        'description':
            'หอพักทันสมัยโมเดิร์น สะดวกครบครัน เฟอร์นิเจอร์บิวอิน บรรยากาศดี เป็นกันเอง',
        'coordinates': 'พิกัดขามเรียง มมส.ใหม่'
      },
      {
        'image': 'assets/images/Boss Place.jpg',
        'name': 'หอพักหญิงบอสเพลส',
        'distance': '3.5 กม.',
        'description':
            'หอพักหญิงบอสเพลส หอพักหญิง 100% : หอพักน่าอยู่ อบอุ่น เรียบหรูและมีความเป็นส่วนตัว มีรถโดยสารผ่าน',
        'coordinates': 'พิกัดท่าขอนยาง ใกล้ มมส ใหม่'
      },
      {
        'image': 'assets/images/Dragon Place.jpg',
        'name': 'ดราก้อนเพลส',
        'distance': '4 กม.',
        'description':
            'ดราก้อนเพลสห้องพักสวย สไตล์โมเดิร์น เฟอร์นิเจอร์ลงตัว น่าอยู่ มีทีวีและตู้เย็นทุกห้อง Internet แรง แยก Router',
        'coordinates': ' พิกัดซอยวุ่นวาย ใกล้ (มมส.ใหม่)'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'RoomMatch',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
        backgroundColor: const Color(0xff515389),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                  size: 35,
                ),
                Text(
                  'หอพักแนะนำ',
                  style: TextStyle(
                      color: const Color(0xff515389),
                      fontWeight: FontWeight.bold,
                      fontSize: Get.textTheme.titleLarge?.fontSize),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dorms.length,
                itemBuilder: (context, index) {
                  final dorm = dorms[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => const Detailpage());
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              print(
                                  'Edit button pressed'); // ฟังก์ชันที่ทำงานเมื่อกด
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.edit, // ใช้ไอคอนดินสอ
                                    color: Colors.red, // สีของไอคอน
                                    size: Get.textTheme.bodyLarge?.fontSize),
                                const SizedBox(
                                    width:
                                        4.0), // ระยะห่างระหว่างไอคอนกับข้อความ
                                Text(
                                  'แก้ไข',
                                  style: TextStyle(
                                    decoration:
                                        TextDecoration.underline, // ขีดเส้นใต้
                                    decorationColor: Colors.red, // สีของเส้นใต้
                                    color: Colors.red, // สีข้อความ
                                    fontSize: Get.textTheme.bodyLarge!
                                        .fontSize, 
                                        fontWeight: FontWeight.bold// ขนาดข้อความ
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          color: Colors.grey[100],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                dorm['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 240.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          dorm['name'],
                                          style: TextStyle(
                                              fontSize: Get.textTheme
                                                  .titleMedium?.fontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: const Color.fromARGB(
                                              255,
                                              227,
                                              227,
                                              227), // สีพื้นหลังของวงกลม
                                          radius: Get.textTheme.bodyLarge
                                              ?.fontSize, // ขนาดวงกลมคงเดิม
                                          child: GestureDetector(
                                            onTap: () {
                                              print('Delete button pressed');
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: const Color.fromARGB(255,
                                                  255, 58, 58), // สีของไอคอน
                                              size: Get.textTheme.titleLarge
                                                  ?.fontSize, // ขนาดของไอคอน
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenHeight * 0.01),
                                    Text(
                                      dorm['description'],
                                      style: TextStyle(
                                        fontSize:
                                            Get.textTheme.bodyMedium?.fontSize,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.01),
                                    Text(
                                      dorm['coordinates'],
                                      style: TextStyle(
                                        fontSize:
                                            Get.textTheme.bodyMedium?.fontSize,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
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
