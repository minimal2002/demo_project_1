import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffD0E4FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RoomMatch',
                    style: TextStyle(
                      color: const Color(0xff2C34FF),
                      fontWeight: FontWeight.bold,
                      fontSize: Get.textTheme.displaySmall?.fontSize,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'ชื่อผู้ใช้งาน',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47) ),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'ชื่อ - นามสกุล',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'เพศ',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // ตัวเลือก "ชาย"
                    Radio<String>(
                      value: "ชาย",
                      groupValue: null, // ไม่ต้องเก็บค่า
                      onChanged: (_) {},
                    ),
                    const Text("ชาย"),

                    // ตัวเลือก "หญิง"
                    Radio<String>(
                      value: "หญิง",
                      groupValue: null, // ไม่ต้องเก็บค่า
                      onChanged: (_) {},
                    ),
                    const Text("หญิง"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'เบอร์โทรศัพท์',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'ช่องทางการติดต่อ',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                   hintText: '   (Facebook, line, Instagram)',
                    hintStyle:
                        const TextStyle(color: Color.fromRGBO(95, 99, 104, 1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'อีเมล',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'รหัสผ่าน',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'ยืนยันรหัสผ่าน',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              ElevatedButton(
                onPressed: () {
                  // ฟังก์ชั่นเมื่อกดปุ่ม
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFEFB5),
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 80), // กำหนดระยะห่างภายในปุ่ม
                  shape: RoundedRectangleBorder(
                    // รูปทรงของปุ่ม
                    borderRadius:
                        BorderRadius.circular(30), // ทำให้มุมปุ่มโค้งมน
                  ),
                ),
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
