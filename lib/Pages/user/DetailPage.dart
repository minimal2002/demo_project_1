import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.toInt() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final Map<String, List<String>> dorms = {
      'images': [
        'assets/images/bb.jpg',
        'assets/images/Boss Place.jpg',
        'assets/images/Dragon Place.jpg',
      ],
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff96B1E1),
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'รายละเอียด',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SizedBox(
                  // กำหนดความสูงของ ListView
                  height: screenWidth * 0.8,
                  child: dorms['images'] != null && dorms['images']!.isNotEmpty
                      ? PageView.builder(
                          controller: _pageController,
                          itemCount: dorms['images']!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(
                                dorms['images']![index],
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        )
                      : const Center(
                          child: Text(
                            'Cannot load image',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  // แสดงจำนวนภาพ
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ภาพ ${_currentPage + 1} / ${dorms['images']!.length}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff747474),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //icon ถูกใจ
                  Row(
                    children: [
                      Text(
                        '27',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Get.textTheme.titleMedium?.fontSize,
                            color: const Color(0xff747474)),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      const Icon(Icons.favorite, color: Colors.red, size: 30),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              // ชื่อหอพักและข้อมูลเพิ่มเติม
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'บุญญาดาเพลส',
                    style: TextStyle(
                        fontSize: Get.textTheme.headlineSmall?.fontSize,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff3AA6FF)),
                  ),
                  Row(
                    children: [
                      Text(
                        '3 กม.',
                        style: TextStyle(
                          color: const Color(0xff3AA6FF),
                          fontWeight: FontWeight.bold,
                          fontSize: Get.textTheme.titleMedium?.fontSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              // คำอธิบายหอพัก
              Text(
                'หอพักใกล้มหาวิทยาลัย มบส. ใหม่ สะดวกสบาย ราคาเบาๆ มีระบบความปลอดภัยและสิ่งอำนวยความสะดวกครบครัน',
                style: TextStyle(fontSize: Get.textTheme.titleMedium?.fontSize),
                textAlign: TextAlign.start, // การจัดแนวข้อความ
                overflow: TextOverflow.visible, // กำหนดให้ข้อความแสดงทั้งหมด
              ),

              SizedBox(height: screenHeight * 0.02),
              // ช่องทางการติดต่อ
              Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: const Color(0xff96B1E1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'ช่องทางการติดต่อ',
                  style: TextStyle(
                    fontSize: Get.textTheme.titleMedium?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                children: [
                  const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'XXXXXXXXX',
                    style: TextStyle(
                        fontSize: Get.textTheme.titleMedium?.fontSize),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                children: [
                  const Icon(
                    Icons.email,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'XXXXXXXXX',
                    style: TextStyle(
                        fontSize: Get.textTheme.titleMedium?.fontSize),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'XXXXXXXXX',
                    style: TextStyle(
                        fontSize: Get.textTheme.titleMedium?.fontSize),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              // รายละเอียด
              Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: const Color(0xff96B1E1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'รายละเอียดและบริการ',
                  style: TextStyle(
                    fontSize: Get.textTheme.titleMedium?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              DataTable(
                columns: const [
                  DataColumn(label: Text('ประเภทห้อง')),
                  DataColumn(label: Text('ราคารายเดือน')),
                  DataColumn(label: Text('ราคารายเทอม')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('ห้องแอร์เตียงเดี่ยว 6 ฟุต')),
                    DataCell(Text('3,500.-')),
                    DataCell(Text('16,500.-')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('ห้องพัดลมเตียงเดี่ยว 6 ฟุต')),
                    DataCell(Text('3,000.-')),
                    DataCell(Text('14,000.-')),
                  ]),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              //สิ่งอำนวยความสะดวก
              Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: const Color(0xff96B1E1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'สิ่งอำนวยความสะดวก',
                  style: TextStyle(
                    fontSize: Get.textTheme.titleMedium?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                '- Wi-Fi ฟรี\n- ฟิตเนส\n- ระบบรักษาความปลอดภัย\n- ที่จอดรถ',
                style: TextStyle(fontSize: Get.textTheme.titleMedium?.fontSize),
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
              ),
              SizedBox(height: screenHeight * 0.02),
              //ที่ตั้งเเละแผนที่
              Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: const Color(0xff96B1E1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'ที่ตั้งเเละแผนที่',
                  style: TextStyle(
                    fontSize: Get.textTheme.titleMedium?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
